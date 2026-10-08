%% a)

N = 1e5; % número de experiências
lancamentos = 4; % número de lançamentos da moeda
xi = 0:4;
pxi = zeros(1,5); % probabilidades

experiencias = randi([0 1], lancamentos, N);

for i = 1:length(pxi)
    pxi(i) = sum(sum(experiencias) == i-1)/N;
    fprintf('f(%i)= %f\n',i-1,pxi(i))
end

stem(xi,pxi);
xlabel('x');
ylabel('Função massa de probabilidade de x')

%% b)

N = 1e5; % número de experiências
lancamentos = 4; % número de lançamentos da moeda
xi = 0:4;
pxi = zeros(1,5); % probabilidades

experiencias = randi([0 1], lancamentos, N);

for i = 1:length(pxi)
    pxi(i) = sum(sum(experiencias) == i-1)/N;
end

media = sum(xi.*pxi);
% A media (valor esperado) é a média de todos os valores 
fprintf('Média = %f\n', media)
variencia = sum((media-xi).^2.*pxi);
% É a media da diferença dos valores da nedia (valor esperado)
fprintf('Variância = %f\n', variencia)
desvio_padrao = sqrt(variencia);
% Raiz quadrada da variâncias
fprintf('Desvio Padrão = %f\n', desvio_padrao)

%% c)

% É uma distribuição binomial
% Com fórmula PX(x) = (n)p^x(1-p)^(n-x)
%                     (x)


%% d)
% Os valores para x = 0,1,2,3,4 são calculados:

% PX(0) = (4)*(0.5)^4 = 1*0.0625 = 0.0625
%         (0)

% PX(1) = (4)*(0.5)^4 = 4*0.0625 = 0.25
%         (1)

% PX(2) = (4)*(0.5)^4 = 6*0.0625 = 0.375
%         (2)

% PX(3) = (4)*(0.5)^4 = 4*0.0625 = 0.25
%         (3)

% PX(4) = (4)*(0.5)^4 = 1*0.0625 = 0.0625
%         (4)

%% e)

% E[X] = n*p;
% n = 4 (número de lançamentos)
% p = 0.5 (probabilidade de obter coroa)

% E[X] = 4*0.5 = 2

% Var(X) = n*p*(1-p)
% n = 4 (número de lançamentos)
% p = 0.5 (probabilidade de obter coroa)

% Var(X) = 4*0.5*(1-0.5) = 4*0.5*0.5 = 1

%% f)
% i)

% P(2) + P(3) + P(4) = 0.375 + 0.25 + 0.0625 = 0.6875

% ii)

% P(0) + P(1) = 0.0625 + 0.25 = 0.3125

% iii)

% P(1) + P(2) + P(3) = 0.25 + 0.375 + 0.25 = 0.875
