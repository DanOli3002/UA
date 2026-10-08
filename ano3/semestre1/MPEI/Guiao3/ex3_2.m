%% a)

% O espaço de amostragem é 100. S = {nota de 5, nota de 5, .... , nota de 100}
% A P("acontecimentos elementares") = 1/100 = 0,01.

%% b)

% A P("5€") = 90/100 = 0,90.
% A P("50€") = 9/100 = 0,09.
% A P("100€") = 1/100 = 0,01.

%% c)

xi = [0 5 50 100 110];
pxi = [0.9 0.09 0.01];
b = [0 cumsum(pxi) 1];

stairs(xi,b);
ylim([0, 1.1])
xlim([0,110])
grid on;
xlabel('x');
ylabel('Função de distribuição acumulada de x')
