% Se não existir nenhum modelo em stock são encomendados 3
% Se existir algum modelo em stock não é feita nenhuma encomenda 

% 4 estados -> 0, 1, 2, 3
% estado 0 -> encomenda 3
% outro -> fica igual ?

% Probabilidades da distribuição de Poisson com lambda = 1
% [e^(-y) * y^k] / k!
P_D0 = exp(-1);          % P(D = 0)
P_D1 = exp(-1);          % P(D = 1)
P_D2 = exp(-1) / 2;      % P(D = 2)
P_D3plus = 1 - (P_D0 + P_D1 + P_D2); % P(D >= 3)

% stock inicial:
%    0 1 2 3
% se 0 loja +3
% Matriz de transição T
%T = [P00 P10 P20 P30
%     P01 P11 P21 P31
%     P02 P12 P22 P32
%     P03 P13 P23 P33]

T = [
    P_D3plus,  P_D1,  P_D2,  P_D3plus; % Transições a partir de estado 0 (stock = 0)
    P_D2,      P_D0,  P_D1,  P_D2;     % Transições a partir de estado 1 (stock = 1)
    P_D1,      0,     P_D0,  P_D1;     % Transições a partir de estado 2 (stock = 2)
    P_D0,      0,     0,     P_D0      % Transições a partir de estado 3 (stock >= 3)
];

% Mostrar a matriz de transição
disp('Matriz de transição T:');
disp(T);






