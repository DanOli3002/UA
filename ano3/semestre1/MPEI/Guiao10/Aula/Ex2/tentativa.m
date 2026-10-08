% jogo 4 cenários
% Oceano Deserto Floresta Urbano
% tendo em conta o cenario anterior muda para q cenário...

T = [ 0.1  0.3  0.3  0.3
      0.2  0.4  0.2  0.2
      0.25 0.25 0.25 0.25
      0.25 0.25 0.25 0.25
    ]'

% prob setimo ambiente ser Floresta
% como nao temos info acerca de qual estava anteriormente 
% metemos tudo com igual prob
x0 = ones(1, 4)/4
P_floresta = T^7 * x0';
P_floresta = P_floresta(3)


% prob limite do ambiente ser floresta
% matriz_prob - eye; ones
% x = [zeros 1]'
x = [zeros(1, 4) 1]'
M = [T - eye(size(T)); ones(1,4)]
u = M\x
ProbF_L = u(3)

% prob 5 1as sessoes, 1 e 2 -> deserto & 4 e 5 -> Urbano
ProbD1 = T^1 * x0';
ProbD1 = ProbD1(2)

ProbD2 = T^2 * x0';
ProbD2 = ProbD2(2)

ProbU4 = T^4 * x0';
ProbU4 = ProbU4(4)

ProbU5 = T^5 * x0';
ProbU5 = ProbU5(4)

% N pag (1 a N)
% L -> matriz 100*100
load('L.mat')

% a) 
% valor de N ?
% numero de paginas = numero de colunas ou linhas
N = length(L)


% dead-ends ?
% colunas a 0s
dead_ends = find(sum(L)==0)


% b)
% matriz H de hyperlinks
% igual prob para cada pag
% matriz composta s por 0s e 1s, meter como prob
H = zeros(N);
tot = 0
for i = 1:length(L)
    tot = sum(L(:,i));
    H(:, i) = L(:, i)/tot;
end


% c) matriz A, b = 0.85
b = 0.85;
A = b*H + (1-b)*ones(N)/N;


% d) valor pagerank de todas as pag
r = ones(N, 1)/N;
r2 = H .* r


% e) 3 pag com melhor pag rank e o seu valor

pag = zeros(1,3)
value = zeros(1,3)

% percorrer todos os pageranks (r2)
for i = 1:3
    max_value = -Inf
    indice = 0
    for j = 1:length(r2)
        for k = 1:length(r2)
            if r2(j,k) > max_value && ~ismember(r2(j,k), pag)
                max_value = r2(j,k)
                indice = k
            end
        end
    end
    pag(i) = max_value
    value(i) = indice
end
pag
value
