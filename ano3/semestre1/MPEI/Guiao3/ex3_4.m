%% a)
% i)

N = 1e5; % número de experiências
p_def = 0.30; % probabilidade de defeito

experiencias = sum(rand(5, N) < p_def);
% Conta o número de defeitos em 
% cada uma das 100000 simulações de 5 peças

xi = 0:5;
pxi = zeros(1,6);

for i = xi
    pxi(i+1) = sum(experiencias == i) / N;
    fprintf('P(%d) = %f\n', i, pxi(i+1));
end

figure(1)
subplot(1,2,1);
stem(xi,pxi);
xlabel('Número de peças defeituosas');
ylabel('Probabilidade');
grid on;

% ii)

subplot(1,2,2);
stairs([-1 xi], [0 cumsum(pxi)]);
ylim([-0.1 1.1]);
grid on;
xlabel('x');
ylabel('Função distributiva acumulada de prob de x')

% iii)
max_2 = pxi(1) + pxi(2) + pxi(3);
fprintf(['A probabilidade de, no máximo, 2 ' ...
    'das peças de uma amostra serem defeituosas é ' ...
    '%f\n'], max_2)

%% b)
% i)

%     |x⌋
% (somatório) (n)p^k*(1-p)^(n-k)
%     k=0     (K)

% n = 5 (número de peças na amostra)
% p = 0.3 (probabilidade de uma peça defeituosa)

% ii)

% P(0) = (5)*(0.3)^0*(0.70)^5 = 1*1*(0.70)^5 = 0.16807
%        (0)
​
% P(1) = (5)*(0.3)^1*(0.70)^5 = 5*0.30*(0.70)^4 = 0.36015
%        (1)

% P(2) = (5)*(0.3)^2*(0.70)^3 = 10*0.09*(0.70)^3 = 0.30870
%        (2)

% P(0) + P(1) + P(2) = 0.16807 + 0.36015 + 0.30870 = 0.83692
