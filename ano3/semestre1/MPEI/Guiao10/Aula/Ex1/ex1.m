%% Ex1
a = [0.2, 0, 0.3, 0.1, 0.45]

% a)
%     1      2      3      4      5      META
T = [ 0      a(1)   0      0      1-a(1) 0
      0      0      0      0      1      0
      0      0      0      a(3)   1-a(3) 0
      0      0      a(4)   0      0      1-a(4)
      0      0      a(5)   1-a(5) 0      0
      0      0      0      0      0      1]'

% b)
% Percurso mais pequeno, prob chegar a meta
% Mais Pequeno -> 1, 5, 4, META
% Pp = 0.8 * 0.55 * 0.9
Pp = T(5,1) * T(4, 5) * T(6, 4)

% c)
% numero medio de casas percorridas
% (incluindo inicial e final)
Q = T(1:5, 1:5)

% matriz fundamental
F = (eye(5, 5) - Q)^(-1)

media = sum(F(:,1))+1