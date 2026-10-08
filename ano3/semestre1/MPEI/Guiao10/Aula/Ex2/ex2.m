% N pag (1 a N)
% L -> matriz 100*100
load('L.mat')

% a) 
% valor de N ?
disp("O valor de N é:")
N = size(L)

% dead-ends ?
disp("Os dead-dens são:")
d = find(sum(L) == 0)

% b)
% matriz H de hyperlinks
% igual prob para cada pag

H = zeros(N);
num = 0
for i = 1:N(1)
    % 1o contar quantos 1s existem por coluna
    num = sum(L(:, i));
    % 2o colunar prob 1/num nas posiçoes certas
    H(:, i) = L(:, i)/num;
end
H

% c) matriz A, b = 0.85
% A = b * H + (1 - b) * ones(N)/N

b = 0.85;
A = b * H + (1 - b) * ones(N(1))/N(1)

% d) valor pagerank de todas as pag
r = ones(N(1), 1)/N(1);
r2 = H .* r;

% e) 3 pag com melhor pag rank e o seu valor
num_pag = 3;
top_values = zeros(1, num_pag); % Maiores valores do PageRank
top_indices = zeros(1, num_pag); % Índices das maiores páginas

% Percorrer o vetor r2 e encontrar os 3 maiores valores
for i = 1:num_pag
    max_value = -Inf; % Inicializa o maior valor como -∞
    max_index = -1; % Inicializa o índice correspondente como -1
    for k = 1:length(r2)    
        for j = 1:length(r2)
            % Verificar se o valor atual é maior que max_value
            % e se ainda não foi selecionado
            if r2(k,j) > max_value && ~ismember(j, top_indices)
                max_value = r2(k,j);
                max_index = j;
            end
        end
    end
    % Atualizar os valores e índices correspondentes
    top_values(i) = max_value;
    top_indices(i) = max_index;
end

disp("As 3 páginas com melhor PageRank são:")
disp(top_indices)
disp("Com os valores:")
disp(top_values)