%% tratar dos dados do csv

filename = 'movie_dataset.csv';
data = readtable(filename, 'Delimiter', ',', 'TextType', 'string');

% Estrutura desejada do ficheiro (os dados que acho util):
% genres | id | overview | release_date | title | average_rate | director

movies = struct();
% o indice_valido foi feito pq quando o if era feito ia ser criado uma
% linha vazia no struct, assim isso já não acontece
indice_valido = 1;

for i = 1:height(data)
    genre = data.genres(i);
    id = data.id(i);
    overview = data.overview(i);
    release_date = data.release_date(i);
    title = data.title(i);
    average_rating = data.vote_average(i);
    director = data.director(i);

    if ismissing(genre) || ismissing(id) || ismissing(overview) || ismissing(release_date) || ismissing(title) || ismissing(average_rating) || ismissing(director)
        continue
    else
        movies(indice_valido).genre = genre;
        movies(indice_valido).id = id;
        movies(indice_valido).overview = overview;
        release_date = year(datetime(release_date, 'InputFormat', 'yyyy-MM-dd'));
        movies(indice_valido).release_date = release_date;
        movies(indice_valido).title = title;
        movies(indice_valido).average_rating = average_rating;
        movies(indice_valido).director = director;
        indice_valido = indice_valido + 1;
    end
end

disp('Dados carregados e estruturados!');

%% Bloom Filter

function FB = inicializar(num_bits)
    FB = zeros(num_bits, 1, 'uint8');
end

function FB = adicionar_movie(FB, item, num_hashes)
    movie = item;
    for i = 1:num_hashes
        hash_value = string2hash([movie num2str(i)]);

        hash_value = mod(hash_value, length(FB)) + 1;
        
        FB(hash_value) = 1;
    end
end

function pertence = verificar_bloom(FB, item, num_hashes)
    movie = item;

    for i = 1:num_hashes
        hash_value = string2hash([movie num2str(i)]);

        hash_value = mod(hash_value, length(FB)) + 1;

        bits(i) = FB(hash_value);
    end
    pertence = all(bits == 1);
end

% inicializar o bloom
FB = inicializar(5e4);

num_hashes = 1;

for i = 1:2000      % length(movies)
    % Extrair campos do struct `movies`
    movie_string = sprintf('%s | %d | %s | %d | %s | %.2f | %s', ...
        movies(i).genre, ...
        movies(i).id, ...
        movies(i).overview, ...
        movies(i).release_date, ...
        movies(i).title, ...
        movies(i).average_rating, ...
        movies(i).director);
    
    FB = adicionar_movie(FB, movie_string, num_hashes);
end

for i = 1:2000
    teste1 = sprintf('%s | %d | %s | %d | %s | %.2f | %s', ...
        movies(i).genre, ...
        movies(i).id, ...
        movies(i).overview, ...
        movies(i).release_date, ...
        movies(i).title, ...
        movies(i).average_rating, ...
        movies(i).director)
    pertence = verificar_bloom(FB, teste1, num_hashes);
    fprintf('O elemento "test1" está presente: %d\n', pertence);
end
count_falsos = 0;
for i = 2001:length(movies)
    teste2 = sprintf('%s | %d | %s | %d | %s | %.2f | %s', ...
        movies(i).genre, ...
        movies(i).id, ...
        movies(i).overview, ...
        movies(i).release_date, ...
        movies(i).title, ...
        movies(i).average_rating, ...
        movies(i).director)
    pertence = verificar_bloom(FB, teste2, num_hashes);
    if pertence == 1
        count_falsos = count_falsos + 1;
    end
    fprintf('O elemento "test2" está presente: %d\n', pertence);
end
taxa_falsos_positivos = (count_falsos/length(movies)) * 100;
fprintf("A taxa de falsos positivos é de %.2f\n", taxa_falsos_positivos);

%% Naive Bayes

% Passo 1: Preparar os dados
lista_generos = cell(1, length(movies));
lista_diretores = cell(1, length(movies));
lista_sinopses = cell(1, length(movies));
avaliacoes = zeros(1, length(movies));

for i = 1:length(movies)
    generos_filme = split(movies(i).genre, ', ');
    lista_generos{i} = generos_filme;
    lista_diretores{i} = movies(i).director;
    lista_sinopses{i} = movies(i).overview;
    avaliacoes(i) = movies(i).average_rating;
end

% Certificar-se de que lista_diretores é uma célula de strings
lista_diretores = cellstr(lista_diretores);

% Remover entradas vazias ou inválidas
lista_diretores = lista_diretores(~cellfun('isempty', lista_diretores));

% Obter conjuntos únicos
conjunto_generos = unique(vertcat(lista_generos{:}));
conjunto_diretores = unique(lista_diretores);
conjunto_avaliacoes = unique(avaliacoes);

% Configurar as matrizes de características
num_filmes = length(movies);
num_generos = length(conjunto_generos);
num_diretores = length(conjunto_diretores);
m_generos = zeros(num_filmes, num_generos);
m_diretores = zeros(num_filmes, num_diretores);

% Preencher as matrizes de características
for idx = 1:num_filmes
    % Marcar gêneros
    generos_filme = lista_generos{idx};
    for genero = generos_filme'
        indice_genero = find(strcmp(conjunto_generos, genero));
        m_generos(idx, indice_genero) = 1;
    end

    % Marcar diretores
    indice_diretor = find(strcmp(conjunto_diretores, lista_diretores{idx}));
    m_diretores(idx, indice_diretor) = 1;
end

% Passo 2: Calcular probabilidades condicionais

prob_avaliacoes = zeros(1, length(conjunto_avaliacoes));
prob_genero_condicional = zeros(length(conjunto_avaliacoes), num_generos);
prob_diretor_condicional = zeros(length(conjunto_avaliacoes), num_diretores);

for idx_avaliacao = 1:length(conjunto_avaliacoes)
    avaliacao = conjunto_avaliacoes(idx_avaliacao);

    % Probabilidade de cada avaliação
    filmes_com_avaliacao = (avaliacoes == avaliacao);
    prob_avaliacoes(idx_avaliacao) = sum(filmes_com_avaliacao) / num_filmes;

    % Probabilidades condicionais para gêneros
    for idx_genero = 1:num_generos
        prob_genero_condicional(idx_avaliacao, idx_genero) = sum(m_generos(filmes_com_avaliacao, idx_genero)) / sum(filmes_com_avaliacao);
    end

    % Probabilidades condicionais para diretores
    for idx_diretor = 1:num_diretores
        prob_diretor_condicional(idx_avaliacao, idx_diretor) = sum(m_diretores(filmes_com_avaliacao, idx_diretor)) / sum(filmes_com_avaliacao);
    end
end

%% Passo 3: "Avaliar" um novo filme

novo_generos = split("Romance", ', ');
novo_diretor = "Tyler Russell";
% não estou a utilizar a sinopse
%novo_sinopse = "Forced to confront her past, Cassandra Webb, a Manhattan paramedic that may have clairvoyant abilities, forms a relationship with three young women destined for powerful futures, if they can survive their threatening present.";

probabilidades = zeros(1, length(conjunto_avaliacoes));

for idx_avaliacao = 1:length(conjunto_avaliacoes)
    prob_atual = prob_avaliacoes(idx_avaliacao);

    for genero = novo_generos'
        indice_genero = find(strcmp(conjunto_generos, genero));
        if ~isempty(indice_genero)
            prob_atual = prob_atual * prob_genero_condicional(idx_avaliacao, indice_genero);
        else
            prob_atual = prob_atual * 0.01; % Penalidade para gênero desconhecido
        end
    end

    indice_diretor = find(strcmp(conjunto_diretores, novo_diretor));
    if ~isempty(indice_diretor)
        prob_atual = prob_atual * prob_diretor_condicional(idx_avaliacao, indice_diretor);
    else
        prob_atual = prob_atual * 0.01; % Penalidade para diretor desconhecido
    end

    probabilidades(idx_avaliacao) = prob_atual;
end

% Determinar a avaliação mais provável
[~, indice_max] = max(probabilidades);
resultado_avaliacao = conjunto_avaliacoes(indice_max);

disp(['O rating mais provável para o novo filme é: ', num2str(resultado_avaliacao)]);
% Valor esperado 7.0

%% MinHash

%% Só título

k = 100; % Número de funções hash
shingle_size = 3; % Tamanho do shingle

assinaturas = inf(length(movies), k);

for i = 1:length(movies)
    title = movies(i).title;
    title = char(title);
    
    for j = 1:length(title) - shingle_size + 1
        shingle = title(j:j + shingle_size - 1);
        hash2 = string2hash_v2(shingle, k);
        assinaturas(i, :) = min(assinaturas(i, :), hash2);
    end
end

input_string = input("Introduza um título: ", 's');
assinatura_input = inf(1, k);

for j = 1:length(input_string) - shingle_size + 1
    shingle = input_string(j:j + shingle_size - 1);
    hash2 = string2hash_v2(shingle, k);
    assinatura_input(1, :) = min(assinatura_input(1, :), hash2);
end

distancias = zeros(length(movies), 1);
for i = 1:length(movies)
    distancias(i) = sum(assinaturas(i, :) ~= assinatura_input) / k;
end

[~, indices] = mink(distancias, 3);

disp("Os 3 filmes mais similares são:");
for i = 1:3
    fprintf('Título: %s | Distância: %.2f\n', movies(indices(i)).title, distancias(indices(i)));
end

%% Título e Sinopse

k = 100; % Número de funções hash
shingle_size = 3; % Tamanho do shingle

assinaturas = inf(length(movies), k);

for i = 1:length(movies)
    content = strcat(movies(i).title, ' ', movies(i).overview);
    content = char(content);
    
    for j = 1:length(content) - shingle_size + 1
        shingle = content(j:j + shingle_size - 1);
        hash2 = string2hash_v2(shingle, k);
        assinaturas(i, :) = min(assinaturas(i, :), hash2);
    end
end

input_title = input("Introduza um título: ", 's');
input_synopsis = input("Introduza uma sinopse: ", 's');

input_content = strcat(input_title, ' ', input_synopsis);
assinatura_input = inf(1, k);

for j = 1:length(input_content) - shingle_size + 1
    shingle = input_content(j:j + shingle_size - 1);
    hash2 = string2hash_v2(shingle, k);
    assinatura_input(1, :) = min(assinatura_input(1, :), hash2);
end

distancias = zeros(length(movies), 1);
for i = 1:length(movies)
    distancias(i) = sum(assinaturas(i, :) ~= assinatura_input) / k;
end

[~, indices] = mink(distancias, 3);

disp("Os 3 filmes mais similares são:");
for i = 1:3
    fprintf('Título: %s | Distância: %.2f\n', movies(indices(i)).title, distancias(indices(i)));
end

%% Título, Sinopse, genre

k = 100; % Número de funções hash
shingle_size = 3; % Tamanho do shingle

assinaturas = inf(length(movies), k);

for i = 1:length(movies)
    content = strcat(movies(i).title, ' ', movies(i).overview, ' ', movies(i).genre);
    content = char(content);
    
    for j = 1:length(content) - shingle_size + 1
        shingle = content(j:j + shingle_size - 1);
        hash2 = string2hash_v2(shingle, k);
        assinaturas(i, :) = min(assinaturas(i, :), hash2);
    end
end

input_title = input("Introduza um título: ", 's');
input_synopsis = input("Introduza uma sinopse: ", 's');
input_genres = input("Introduza os gêneros (separados por vírgulas): ", 's');

input_content = strcat(input_title, ' ', input_synopsis, ' ', input_genres);
assinatura_input = inf(1, k);

for j = 1:length(input_content) - shingle_size + 1
    shingle = input_content(j:j + shingle_size - 1);
    hash2 = string2hash_v2(shingle, k);
    assinatura_input(1, :) = min(assinatura_input(1, :), hash2);
end

distancias = zeros(length(movies), 1);
for i = 1:length(movies)
    distancias(i) = sum(assinaturas(i, :) ~= assinatura_input) / k;
end

[~, indices] = mink(distancias, 3);

disp("Os 3 filmes mais similares são:");
for i = 1:3
    fprintf('Título: %s | Distância: %.2f\n', movies(indices(i)).title, distancias(indices(i)));
end
