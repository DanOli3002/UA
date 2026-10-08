tic
dic2 = readcell('film_info.txt', 'Delimiter', '\t');
dic = dic2(:,1); clear dic2;
dic = unique(dic);
nMovie = length(dic);


k = 100; % Número de funções de dispersão
shingle_size = 3; % Tamanho do shingle(qualquer valor que quiser entre 2 a 5)

shingles_filmes = cell(size(dic, 1), length(shingle_size));
assinaturas = cell(size(dic, 1), length(shingle_size));

% Gerar as assinaturas MinHash para cada filme
for i = 1:nMovie
    title = dic{i};
    for j = 1:length(shingle_size)
        s = shingle_size(j);
        shingles_filmes{i, j} = create_shingles(title, s);
        assinaturas{i, j} = minhash(shingles_filmes{i, j}, k);
    end
end

similaridades = zeros(size(dic, 1), size(dic, 1), length(shingle_size));

for i = 1:size(dic, 1)
    for j = i+1:size(dic, 1)
        for k = 1:length(shingle_size)
            sim = J(assinaturas{i, k}, assinaturas{j, k});
            similaridades(i, j, k) = sim;
            similaridades(j, i, k) = sim;
        end
    end
end

% Guardar a matriz de assinaturas em um ficheiro .mat
save('minhash_assinaturas.mat', 'assinaturas', 'similaridades');
toc
% criar um conjunto de shingles para cada filme
function shingles = create_shingles(title, shingle_size)
    title = lower(title);
    n = length(title);
    shingles = cell(1, n - shingle_size + 1);
    for i = 1:(n - shingle_size + 1)
        shingle = title(i:(i+shingle_size - 1));
        shingles{i} = shingle;
    end
end
function minhash_signature = minhash(shingles, k)
    minhash_signature = inf(1, k);

    for i = 1:k
        for j = 1:length(shingles)
            hash = mod(string2hash(shingles{j}) + i, k);
            minhash_signature(i) = min(minhash_signature(i), hash);
        end
    end
end
function similarity = J(minhash1, minhash2)
    similarity = sum(minhash1 == minhash2) / length(minhash1);
end

%% 2 do prof)
dic2 = readcell('film_info.txt', 'Delimiter', '\t');
dic = dic2(:,1); clear dic2;
dic = unique(dic);
nMovie = length(dic);

k = 100; % Número de funções de dispersão
shingle_size = 3; % Tamanho do shingle(qualquer valor que quiser entre 2 a 5)

assinaturas = inf(nMovie,k);
for i = 1:nMovie
    title = dic{i};
    for j = 1:length(title) - shingle_size + 1
        chave = title(j:j + shingle_size - 1);
        hash2 = string2hash_v2(chave,k);
        assinaturas(i,:) = min(assinaturas(i,:),hash2);
    end
end

input_string = input("Inroduza um título: ", 's');

assinatura_input = inf(1,k);
for j = 1:length(input_string) - shingle_size + 1
    chave = input_string(j:j+shingle_size-1);
    hash2 = string2hash_v2(chave,k);
    assinatura_input(1,:) = min(assinatura_input(1,:),hash2);
end

dist = inf;
for i = 1:nMovie
    aux = sum(assinaturas(i,:)~=assinatura_input)/k;
    if aux < dist
        dist = aux;
        i_final = i;
    end
end
dic{i_final}

%% 2)

dic2 = readcell('film_info.txt', 'Delimiter', '\t');
dic = dic2(:,1); clear dic2;
dic = unique(dic);
nMovie = length(dic);

k = 100; % Número de funções de dispersão
shingle_size = 3; % Tamanho do shingle

assinaturas = inf(nMovie, k);
for i = 1:nMovie
    title = dic{i};
    for j = 1:length(title) - shingle_size + 1
        chave = title(j:j + shingle_size - 1);
        hash2 = string2hash_v2(chave, k);
        assinaturas(i, :) = min(assinaturas(i, :), hash2);
    end
end

input_string = input("Introduza um título: ", 's');
assinatura_input = inf(1, k);
for j = 1:length(input_string) - shingle_size + 1
    chave = input_string(j:j + shingle_size - 1);
    hash2 = string2hash_v2(chave, k);
    assinatura_input(1, :) = min(assinatura_input(1, :), hash2);
end

distancias = zeros(nMovie, 1);
for i = 1:nMovie
    distancias(i) = sum(assinaturas(i, :) ~= assinatura_input) / k;
end

[~, indices] = mink(distancias, 3);

disp("Os 3 filmes mais similares são:");
for i = 1:3
    disp(dic{indices(i)});
end
