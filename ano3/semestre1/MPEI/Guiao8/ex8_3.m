%% a)

H =[    % A     %B      %C      %D      %E      %F
        0.0     0.0     0.0     0.0     0.3333  0.0 %A
        1.0     0.0     0.0     0.0     0.3333  0.0 %B
        0.0     0.5     0.0     1.0     0.0     0.0 %C
        0.0     0.0     1.0     0.0     0.0     0.0 %D
        0.0     0.5     0.0     0.0     0.0     0.0 %E
        0.0     0.0     0.0     0.0     0.3333  0.0 %F
    ]

N = size(H, 1);         % Número de páginas
pr = ones(N, 1) / N;    % vetor prob uniforme (1/N)
for i = 1:10
    pr = H * pr
end

disp('PageRank após 10 iterações:');
disp(pr);

[maior_pagerank, index] = max(pr);
fprintf('Página com maior PageRank: %d\n', index);
fprintf('Valor do maior PageRank: %.4f\n', maior_pagerank);


%% b)

fprintf("A spider trap é os estados C e D.\n")
fprintf("O dead-end é o estado F.\n")

%% c)

% resolver dead-ends
for i = 1:N
    if sum(H(:, i)) == 0   % Detectar linhas sem saída
        H(:, i) = 1 / N;   % Substituir com probabilidades iguais
    end
end
disp(H)

% testar outra vez
N = size(H, 1);         % Número de páginas
pr = ones(N, 1) / N;    % vetor prob uniforme (1/N)
for i = 1:10
    pr = H * pr
end

disp('PageRank após 10 iterações:');
disp(pr);

[maior_pagerank, index] = max(pr);
fprintf('Página com maior PageRank: %d\n', index);
fprintf('Valor do maior PageRank: %.4f\n', maior_pagerank);

%% d)

beta = 0.8
A = beta * H + (1 - beta) * ones(N)/N;
A

r = ones(N, 1)/N;
for i = 1:10
    r = A*r; 
end

disp('PageRank após 10 iterações:');
disp(r);

%% e)

r = ones(N, 1) / N;
r1 = A * r; 
dif = max(abs(r(:) - r1(:)));

iter = 1;
while dif > 1e-4
    r_prev = r;
    r = A * r;
    dif = max(max(abs(r - r_prev)));
    iter = iter + 1;
end

fprintf('PageRank após %d iterações:\n', iter);
disp(r);

% valores proximos -> convergencia rapida
% e eficiencia do criterio de convergencia
