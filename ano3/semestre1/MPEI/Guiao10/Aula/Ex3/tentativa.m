%%
% anterior 0 erros -> proximo 1 erro 0.09, 2+ erros 0.01
% anterior COM erros -> prox 1 erro 0.4, 2+ erros 0.1
% Cadeia Markov 3 estados (1 -> 0 erros, 2 -> 1 erro, 3 -> 2+ erros)
% 1o pacote -> 3 erros !!!

% a) T e x0 ?

T = [ 1-(0.09+0.01)   0.09    0.01
      1-(0.4+0.1)     0.4     0.1
      1-(0.4+0.1)     0.4     0.1]'
T

x0 = [zeros(1,2) 1]'
% b) prob 4o pacote (para os 3 estados)
% usar 3 em vez de 4, pq ja existe 1 estado defenido
prob4 = T^(3) * x0

% c) prob estacionaria
% diff prob < 0.001
% prob 2+ erros ?
v = x0
while true
    v_next = T * v
    diff = max(abs(v_next - v))
    if diff < 0.001
        break
    end
    v = v_next
end

v(3)

% web pages C a G
% C -> D, E
% D -> E, C
% E -> C, E, G
% G -> D, F
% F -> C, D, E, G

%     C   D   E   F   G
H = [ 0   0.5 0.5 0   0
      0.5 0   0.5 0   0
      1/3 0   1/3 0   1/3
      0   0.5 0   0.5 0
      1/4 1/4 1/4 0   1/4]'
H

% a) A
b = 0.8
A = b * H + (1-b) * ones(5)/5 


% b) pagerank em 10 iter
x0 = [1/5 1/5 1/5 1/5 1/5]'

pagRank = A^10 * x0

%     a   b   c   d   .   ?
T = [ 0.7 0.2 0   0.1 0   0   % a
      0.2 0   0.6 0.2 0   0   % b
      0   0.3 0.3 0.3 0.1 0   % c
      0   0   0   0.1 0.5 0.4 % d
      0   0   0   0   1   0   % .
      0   0   0   0   0   1]' % ?

% x0 = 'a'
x0 = [1 zeros(1,5)]'



% b) 10º -> c, 15º -> d
% usar 9 e 14, pq 'a' é 1o estado
T10 = T^9 * x0 
T10c = T10(3)

T15 = T^14 * x0 
T15d = T15(4)


% c) media do comprimento 
% começar 'c' e acabar em ? ou .
T_new = T(1:4, 1:4)

F = (eye(length(T_new)) - T_new)^(-1);
values = F(3,:);
% soma-los e obter prob
soma_v = 0;
for i=1:length(values)
    soma_v = soma_v + values(i);
end
% +1 por causa do final
soma_v = soma_v + 1



