%% Ex 2

% a)
%        1   2   3   4
T = [   0.8 0.2 0   0
        0   0.9 0.1 0
        0.3 0.2 0.4 0.2
        0   0   0   1
    ]
% meter como o stor tem
T_inversa = [   0.8 0   0.3 0
                0.2 0.9 0.2 0
                0   0.1 0.4 0
                0   0   0.2 1
    ]

% b)
V = [1 0 0 0]';

res = T_inversa^1000 * V

res(2)

% c)
passos = [1, 2, 10, 100];

for i = 1:length(passos)
    Tn = T_inversa^passos(i);
    fprintf("Probabilidades de transição após %d passos:\n", passos(i));
    disp(Tn);
end

% d) matriz Q -> todos nos menos os que nao tem saida(4)
Q = [0.8 0   0.3
     0.2 0.9 0.2
     0   0.1 0.4];
% ou
% 2D Matriz Q
net = 3;
Q = T_inversa(1:net, 1:net)

% e) F = (I -Q)^(-1)
% 2D Mtriz Fundamental F

F = inv( eye(3) - Q) 

% f)
sF = sum(F)
% da pag 4 a 1
sF(1)

% g)
% t = F'*1

t = F' * ones(1,net)'
% tempo absorçao da pag 1 a 3
t_total = sum(t)