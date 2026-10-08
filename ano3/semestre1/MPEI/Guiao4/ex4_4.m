% sol -> 0.75, chuva -> 0.25
% meteologia local -> 100% acertar IF chuva AND 1/3 IF sol
% estudante diz -> metereo. loc. 50% acertar, podia ter 75% se só sol

% prob conjunta da meteologia local
% P(S) = 0.75
% P(Acertar|S) = 1/3
% P(C) = 0.25
% P(Acertar|C) = 1

% P(A&S) = P(A|S) * P(S) = 1/3 * 0.75 = 1/4
% P(A&C) = P(A|C) * P(C) = 1 * 0.25 = 1/4
% P(E&S) = [1 - P(A|S)] * P(S) = (1 - 1/3) * 0.75 = 1/2
% P(E&C) = [1 - P(A|C)] * P(C) = (1 - 1) * 0.25 = 0

% tabela Prob conjunta:
%%%%%%%%%%  Sol  Chuva
% Acertar   1/4   1/4
% Errar     1/2   0

% prob conjunta do estudante (ele sempre preve sol)
% P(S) = 0.75
% P(Acertar|S) = 1
% P(C) = 0.25
% P(Acertar|C) = 0

% P(A&S) = P(A|S) * P(S) = 1 * 0.75 = 3/4
% P(A&C) = P(A|C) * P(C) = 0 * 0.25 = 0
% P(E&S) = [1 - P(A|S)] * P(S) = (1 - 1) * 0.75 = 0
% P(E&C) = [1 - P(A|C)] * P(C) = (1 - 0) * 0.25 = 1/4

% tabela Prob conjunta:
%%%%%%%%%%  Sol  Chuva
% Acertar   3/4   0
% Errar     0     1/4

X = [0, 1];
Y = [0, 1];

% Metereologista
% Tabela de probabilidade conjunta para a meteorologia
%   Acertar, Errar
Pxy = [1/4, 1/2;  % Sol
       0, 1/4];   % Chuva

% Calculando as probabilidades massa
Pm_x = sum(Pxy, 2)';
Pm_y = sum(Pxy, 1);

% Calculando as medias de X e Y
Em_x = sum(X .* Pm_x)
Em_y = sum(Y .* Pm_y)

% Calculando a E[XY]
Em_xy = sum(sum(X' * Y .* Pxy));

fprintf('E[XY]: %.3f\n', Em_xy);

%Estudante
%   Acertar, Errar
Pxy = [3/4, 0;  % Sol
       0, 1/4];   % Chuva

% Calculando as probabilidades massa
Pm_x = sum(Pxy, 2)';
Pm_y = sum(Pxy, 1);

% Calculando as medias de X e Y
Em_x = sum(X .* Pm_x)
Em_y = sum(Y .* Pm_y)

Em_x2 = sum(X.^2 .* Pm_x)  % med de X^2
Em_y2 = sum(Y.^2 .* Pm_y)  % med de Y^2

% Calculando a E[XY]
Em_xy = sum(sum(X' * Y .* Pxy));

fprintf('E[XY]: %.3f\n', Em_xy);

% covariância
covm_XY = Em_xy - (Em_x * Em_y);

fprintf('Cov(X,Y): %.3f\n', covm_XY);
