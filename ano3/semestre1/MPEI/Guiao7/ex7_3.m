
function recomendacoes = recomendar_utilizadores(filme_id, udata, users, k, shingle_size, threshold)
    
end

function shingles = create_shingles(input_string, shingle_size)
    input_string = lower(input_string);
    n = length(input_string);
    shingles = cell(1, n - shingle_size + 1);

    for i = 1:(n - shingle_size + 1)
        shingles{i} = input_string(i:(i + shingle_size - 1));
    end
end

function minhash_signature = minhash(shingles, k)
    minhash_signature = inf(1, k);

    for i = 1:k
        for j = 1:length(shingles)
            hash_value = mod(string2hash(shingles{j}) + i, 1e6);
            minhash_signature(i) = min(minhash_signature(i), hash_value);
        end
    end
end

function similarity = J(minhash1, minhash2)
    similarity = sum(minhash1 == minhash2) / length(minhash1);
end

udata = load("ml-100k\ml-100k\u.data"); % Carrega o ficheiro dos dados dos filmes
users = readcell('users.txt', 'Delimiter', ';');

filme_id = 10; % Exemplo: ID do filme
k = 100; % Número de funções de dispersão
shingle_size = 2:5; % Tamanho do shingle
threshold = 0.9; % Limite de distância de Jaccard estimada

recomendacoes = recomendar_utilizadores(filme_id, udata, users, k, shingle_size, threshold);

disp('Recomendações:');
disp(recomendacoes);

