%% a)

p = 1/1000; % probabilidade de defeito
k = 7; % número de chips defeituosos
n = 8000; % número de chips

pbi = nchoosek(n,k)*p^k*(1-p)^(n-k);

fprintf("Pro distribuição binomial = %f\n", pbi);

%% b)

p = 1/1000; % probabilidade de defeito
k = 7; % número de chips defeituosos
n = 8000; % número de chips

lambda = n*p;

ppoi = ((lambda^k)/factorial(k))*exp(-lambda);

fprintf("Pro distribuição binomial = %f\n", ppoi);
