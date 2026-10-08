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
      1/4 1/4 1/4 0   1/4
    ]'

% a) A = b * H + (1-b)*ones(n)/n
b = 0.8;
A = b * H + (1 - b) * ones(5)/5

% b) pagerank em 10 iter
v = ones(1,5)/5;

A10 = A^10 * v'
