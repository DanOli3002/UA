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
v = [0.25 0.25 0.25 0.25]

Prob_Floresta = (T^7) * v'
Prob_Floresta(3)

% prob limite do ambiente ser floresta

M = [ T - eye(size(T)); ones(1, 4)]
% x = [0 0 0 0 1]'
x = [zeros(4, 1); 1]

u = M\x
Prob_limite_F = u(3)

% prob 5 1as sessoes, 1 e 2 -> deserto & 4 e 5 -> Urbano
x0 = [0.25 0.25 0.25 0.25]'
T1 = T * x0
fprintf("Probabilidade Deserto na sessão 1: %d \n", T1(2));

T2 = (T^2) * x0
fprintf("Probabilidade Deserto na sessão 2: %d \n", T2(2));

T4 = (T^4) * x0
fprintf("Probabilidade Urbano na sessão 4: %d \n", T4(4));

T5 = (T^5) * x0
fprintf("Probabilidade Urbano na sessão 5: %d \n", T5(4));