%     a   b   c   d   .   ?
T = [ 0.7 0.2 0   0.1 0   0   % a
      0.2 0   0.6 0.2 0   0   % b
      0   0.3 0.3 0.3 0.1 0   % c
      0   0   0   0.1 0.5 0.4 % d
      0   0   0   0   1   0   % .
      0   0   0   0   0   1]' % ?
% x0 = 'a'
x0 = [1 zeros(1, 5)]'

% b) 10º -> c, 15º -> d
% usar 9 e 14, pq 'a' é 1o estado
T10 = T^9 * x0;
Tc = T10(3)
T15 = T^14 * x0;
Td = T15(4)

% c) media do comprimento 
% começar 'c' e acabar em ? ou .

Q = T(1:4,1:4);
F = (eye(length(Q)) - Q)^(-1);
valor_esperado = F(3, :);
sum1 = 0;
for i = 1:length(valor_esperado)
    sum1 = sum1 + valor_esperado(i);
end
% ter em conta o estado final
sum1 = sum1 + 1

N = 1e6;
sum = 0;
for i = 1:N
    state = crawl(T, 3, [5,6]);
    sum = sum + length(state);
end

sum/N