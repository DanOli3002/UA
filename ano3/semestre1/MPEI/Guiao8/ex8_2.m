%% a)

H = [   %1  %2  %3  %4
        0.8 0.0 0.3 0.0 %1 
        0.2 0.9 0.2 0.0 %2
        0.0 0.1 0.4 0.0 %3
        0.0 0.0 0.1 1.0 %4
    ]

%% b)

v1 = [1 0 0 0]';

a = H^1000 * v1;

resposta = a(2)

%% c)

v1 = [1 0 0 0; 0 1 0 0; 0 0 1 0; 0 0 0 1]';
num_passos = [1;2;10;100];

for i = 1:length(num_passos)
    a = H^num_passos(i) * v1
end

%% d)

% o H já esta organuzada com o estado absorvente no fim da matriz
% então a matruz Q seria:
Q = H(1:3,1:3)

%% e)
% matriz fundamental F = (I - Q)^(-1)
F = (eye(3) - Q)^(-1)

%% f)

sF = sum(F)
% da pag 1 a 4
sF(1)

%% g)

t = F' * ones(1,3)'
% tempo absorçao da pag 1 a 3
t_total = sum(t)
