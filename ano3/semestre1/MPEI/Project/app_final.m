%% carregar os Dados
filename = 'movie_dataset.csv';
data = readtable(filename, 'Delimiter', ',', 'TextType', 'string');

% Estrutura desejada do ficheiro (os dados que acho util):
% genres | id | overview | title | average_rate | director

% Estruturar os dados
movies = struct();
indice_valido = 1;

for i = 1:height(data)
    genre = data.genres(i);
    id = data.id(i);
    overview = data.overview(i);
    title = data.title(i);
    average_rating = data.vote_average(i);
    director = data.director(i);

    if ismissing(genre) || ismissing(id) || ismissing(overview) || ismissing(title) || ismissing(average_rating) || ismissing(director)
        continue
    else
        movies(indice_valido).genre = genre;
        movies(indice_valido).id = id;
        movies(indice_valido).overview = overview;
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
    for i = 1:num_hashes
        hash_value = string2hash([item num2str(i)]);
        hash_value = mod(hash_value, length(FB)) + 1;
        FB(hash_value) = 1;
    end
end

function pertence = verificar_bloom(FB, item, num_hashes)
    bits = zeros(1, num_hashes);
    for i = 1:num_hashes
        hash_value = string2hash([item num2str(i)]);
        hash_value = mod(hash_value, length(FB)) + 1;
        bits(i) = FB(hash_value);
    end
    pertence = all(bits == 1);
end

% Inicializar Bloom Filter
FB = inicializar(5e4);
num_hashes = 1;

% Adicionar filmes ao Bloom Filter
for i = 1:length(movies)
    movie_string = sprintf('%s | %d | %s | %s | %.2f | %s', ...
        movies(i).genre, ...
        movies(i).id, ...
        movies(i).overview, ...
        movies(i).title, ...
        movies(i).average_rating, ...
        movies(i).director);
    FB = adicionar_movie(FB, movie_string, num_hashes);
end

%% Naive Bayes
% Preparar os dados para Naive Bayes (igual ao código anterior)
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

for idx = 1:num_filmes
    generos_filme = lista_generos{idx};
    for genero = generos_filme'
        indice_genero = find(strcmp(conjunto_generos, genero));
        m_generos(idx, indice_genero) = 1;
    end

    indice_diretor = find(strcmp(conjunto_diretores, lista_diretores{idx}));
    m_diretores(idx, indice_diretor) = 1;
end

% Calcular probabilidades condicionais
prob_avaliacoes = zeros(1, length(conjunto_avaliacoes));
prob_genero_condicional = zeros(length(conjunto_avaliacoes), num_generos);
prob_diretor_condicional = zeros(length(conjunto_avaliacoes), num_diretores);

for idx_avaliacao = 1:length(conjunto_avaliacoes)
    avaliacao = conjunto_avaliacoes(idx_avaliacao);
    filmes_com_avaliacao = (avaliacoes == avaliacao);
    prob_avaliacoes(idx_avaliacao) = sum(filmes_com_avaliacao) / num_filmes;

    for idx_genero = 1:num_generos
        prob_genero_condicional(idx_avaliacao, idx_genero) = sum(m_generos(filmes_com_avaliacao, idx_genero)) / sum(filmes_com_avaliacao);
    end

    for idx_diretor = 1:num_diretores
        prob_diretor_condicional(idx_avaliacao, idx_diretor) = sum(m_diretores(filmes_com_avaliacao, idx_diretor)) / sum(filmes_com_avaliacao);
    end
end

%% MinHash (Title, Overview, Genre)
k = 100;
shingle_size = 3;
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

%% Aplicação Principal
disp('Bem-vindo à aplicação de recomendações de filmes!');

% Entrada do Utilizador
input_title = input("Introduza o título do filme: ", 's');
input_synopsis = input("Introduza a sinopse do filme: ", 's');
input_genres = input("Introduza os gêneros (separados por vírgulas): ", 's');
input_director = input("Introduza o diretor do filme: ", 's');

% Verificar no Bloom Filter
input_string = sprintf('%s | %s | %s', input_title, input_synopsis, input_genres);
pertence = verificar_bloom(FB, input_string, num_hashes);

if pertence
    fprintf('O filme %s já existe no Bloom Filter.\n', input_title);
    fprintf('Avaliação armazenada: \n');
else
    disp('O filme não foi encontrado no Bloom Filter.');
    disp('Estimando avaliação com Naive Bayes');

    novo_generos = split(input_genres, ', ');
    probabilidades = zeros(1, length(conjunto_avaliacoes));

    for idx_avaliacao = 1:length(conjunto_avaliacoes)
        prob_atual = prob_avaliacoes(idx_avaliacao);
        for genero = novo_generos'
            indice_genero = find(strcmp(conjunto_generos, genero));
            if ~isempty(indice_genero)
                prob_atual = prob_atual * prob_genero_condicional(idx_avaliacao, indice_genero);
            else
                prob_atual = prob_atual * 0.01;
            end
        end

        indice_diretor = find(strcmp(conjunto_diretores, input_director));
        if ~isempty(indice_diretor)
            prob_atual = prob_atual * prob_diretor_condicional(idx_avaliacao, indice_diretor);
        else
            prob_atual = prob_atual * 0.01; % Penalidade para diretor desconhecido
        end

        probabilidades(idx_avaliacao) = prob_atual;
    end

    [~, indice_max] = max(probabilidades);
    resultado_avaliacao = conjunto_avaliacoes(indice_max);
    disp(['A avaliação estimada para o filme é: ', num2str(resultado_avaliacao)]);
end

% Recomendações com MinHash
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
disp('Os 3 filmes mais similares são:');
for i = 1:3
    fprintf('Título: %s | Distância: %.2f\n', movies(indices(i)).title, distancias(indices(i)));
end

% filme que pertence:
% Fight Club
% An insomniac office worker and a devil-may-care soap maker form an underground fight club that evolves into much more.
% Psychological Drama, Workplace Drama, Drama
% David Fincher

% filme que não pertence:
% Madame Web
% Forced to confront her past, Cassandra Webb, a Manhattan paramedic that may have clairvoyant abilities, forms a relationship with three young women destined for powerful futures, if they can survive their threatening present.
% Psychological Thriller, Superhero, Action, Adventure, Science Fiction, Thriller
% S.J. Clarkson
% avaliação esperada é de 4.0

% filme que não pertence:
% Someone Like You
% After the tragic loss of his best friend, a grieving young architect launches a search for her secret twin sister.
% Romance
% Tyler Russell
% avaliação esperada é de 5.8
