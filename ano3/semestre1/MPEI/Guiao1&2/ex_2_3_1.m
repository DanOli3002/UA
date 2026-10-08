%% a)
% Programador   Prob("erro num programa")   programas
% André         0,01                        20
% Bruno         0,05                        30
% Carlos        0,001                       50

% P("Carlos"|"erro num programa") =
% P("Carlos" e "erro num programa") / P("erro num programa")
% (P("erro num programa"|"Carlos") * P("Carlos"))/P("erro num programa")
% ((1/1000) * (1/3))/(61/1000) =
% 61/1000

N= 1e5; % número de experiências
n = 100; % número de programas
peA = 0.01; % probabilidade de erro do André
peB = 0.05; % probabilidade de erro do Bruno
peC = 0.001; % probabilidade de erro do Carlos

pA = 0.2; % probabilidade do programa ser do André
pB = 0.3; % probabilidade do programa ser do Bruno
pC = 0.5; % probabilidade do programa ser do Carlos

peTotal = peA*pA + peB*pB + peC*pC;
% Cálculo da probabilidade total de erro

prob_f = (peC*pC)/peTotal

%% b)

prob_C = 0.001;
prob_B = 0.05;
prob_A = 0.01;

%Criar uma matriz com 100 linhas (100 programas)
%N colunas, dividir a matriz em 3
N = 100;
C = 100;

experiencias = zeros(N, C);

% criar as sublistas com probabilidade desejada
experiencias(1:20, :) = rand(20, C) < prob_A;
experiencias(21:50, :) = rand(30, C) < prob_B;
experiencias(51:end, :) = rand(50, C) < prob_C;

tabela_A = experiencias(1:20, :);    %André
tabela_B = experiencias(21:50, :);    %Bruno
tabela_C = experiencias(51:end, :);    %Carlos

% retorna valor de quantos erros na sublistas
erro_Andre = sum(sum(tabela_A, 1) > 0);
erro_Bruno = sum(sum(tabela_B, 1) > 0);
erro_Carlos = sum(sum(tabela_C, 1) > 0);

erro_Total = erro_Andre + erro_Bruno + erro_Carlos;

prob_Andre = erro_Andre / erro_Total;
prob_Bruno = erro_Bruno / erro_Total;
prob_Carlos = erro_Carlos / erro_Total;

fprintf('Probabilidade do erro ser do André: %.4f\n', prob_Andre);
fprintf('Probabilidade do erro ser do Bruno: %.4f\n', prob_Bruno);
fprintf('Probabilidade do erro ser do Carlos: %.4f\n', prob_Carlos);

% (valores teoricos)
% P_Carlos_Erro = 0.0286
% P_Andre_Erro  = 0.1143
% P_Bruno_Erro  = 0.8571
