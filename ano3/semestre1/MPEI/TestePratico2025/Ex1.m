%% a)

T = [ %1   %2   %3   %4   %5
      1    0    0    0    0
      0    1    0    0    0
      1/3  1/3  0    0    1/3
      1/2  0    1/2  0    0
      0    0    0    1    0
    ]

% forma canónica
T1 = [ 
       0   1/3   0   0   0
       1/2   0   0   0   0
       0   0   1   0   0
       1/3   1/3   0   1   0
       1/2   0   0   0   1
     ]

%% b)

v1 = [0 0 0 1 0]';

a = T^15 * v1;
resposta = a(4)

%% c)

Q = [
      0   1/3
      1/2 0
    ];
F = (eye(2) - Q)^(-1)

sF = sum(F)

% errado?

%% d)

beta = 0.8;
N = size(T,1);

A = beta * T + (1 - beta) * ones(N)/N;
A

r = ones(N,1)/N;
for i = 1:10
        r = A*r;
end

[maior_pagerank, index] = max(r);
fprintf("Página com maior PageRank: %d\n", index)
fprintf("pagerank apos 10 interaçoes\n")
disp(r)
