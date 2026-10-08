%% Ex 1

%       Sol Nuvs Chuva
% b)
T = [   0.7 0.2 0.1
        0.2 0.3 0.5
        0.3 0.3 0.4 ];

% c)
V = [1 0 0];
ProbD1 =  V * T;
ProbD2 = ProbD1 * T;
% Obter a prob da chuva no 2o dia
ProbD2Chuva = ProbD2(3)

% d)
elem = []
for i = 1:20
    Tn = T^i;

    elem = [elem Tn(:)]
end

plot(elem')

% e)
Tn = T;
Tn1 = Tn * T;
dif = max(abs(Tn1(:) - Tn(:))); % or max(max(abs(Tn1 - Tn)))

iter = 1;
while dif > 1e-4
    iter
    Tn1 = Tn * T;
    dif = max(max(abs(Tn1 - Tn)));
    Tn = Tn1;
    iter = iter + 1;
end

% f)

num_states = 3;
M = [   T - eye(num_states); % subtrai matriz 3*3 com diagonais a 1
        ones(1, num_states) % acrescentar uma linha com 1s no final
    ]
% x = [0 0 0 1]'
x = [   zeros(num_states, 1); 1 ]

% a soma dos elementos de u tem de ser = 1
u = M\x
