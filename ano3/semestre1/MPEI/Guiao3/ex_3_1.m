%% a)

xi = 1:6;
p = ones(1,6)/6;

stem(xi,p);
grid on;
xlabel('x');
ylabel('Função massa da prob de x');

%% b)

xi = 0:7;
p = ones(1,6)/6;
b = [0 cumsum(p) 1];


stairs(xi,b);
% o ylim serve para dar os limites ao gráfico
ylim([0, 1.1])
grid on;
xlabel('x');
ylabel('Função da distribuição acumulada do x')
