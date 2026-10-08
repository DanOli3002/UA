%% 1)
% Código base para detenção de pares similares

udata = load("ml-100k\ml-100k\u.data"); % Carrega o ficheiro dos dados dos filmes
% Fica apenas com as duas primeiras colunas
u = udata(1:end, 1:2); clear udata;

% Lista de utilisadores
users = unique(u(:,1)); % Extrai os IDs dos utilizadores
Nu = length(users); % Número de utilizadores

% Constrói a lista de filmes para cada utilizador
Set = cell(Nu,1); % Usa células
for n = 1:Nu % Para cada utilizador
    % Obtém os filmes de cada um
    ind = find(u(:,1) == users(n));
    % E guarda num array. Usa células porque utilizador tem um número
    % diferente de filmes. So fossem iguais podia ser um array
    Set{n} = [Set{n} u(ind,2)];
end

%% Calcula a distância de Jaccard entre todos os pares pela definição.

t = tic;
J = zeros(Nu,Nu); % array para guardar distâncias
% h = waitbar(0,'Calculating');
for n1 = 1:Nu
    % waitbar(n1/Nu,h);
    for n2 = n1 + 1:Nu
        I = intersect(Set{n1},Set{n2});
        U = union(Set{n1},Set{n2});
        J(n1,n2) = 1 - length(I)/length(U);
    end
end
% delete (h)
fprintf('Cálculo das distâncias exatas: %f segundos', toc(t));

%% Com base na distância, determina pares com
% distância inferior a um limiar pré-defenido

threshold = 0.4; % limiar de decisão

% Array para guardar pares similares (user1, user2, distância)
SimilarUsers = zeros(1,3);
k = 1;
for n1 = 1:Nu
    for n2 = n1+1:Nu
        if J(n1,n2) <= threshold
            SimilarUsers(k,:) = [users(n1) users(n2) J(n1,n2)];
            k = k + 1;
        end
    end
end

SimilarUsers = sortrows(SimilarUsers,3)
fprintf('Número de pares de utilizadores inferiores a %f é: %f\n',threshold, length(SimilarUsers));

%% 4)

t = tic;
k = 100;
assinaturas = inf(Nu,k);

for i = 1:Nu
    filmes = Set{i};
    for j = 1:length(filmes)
        str = filmes(j);
        hash2 = string2hash_v2(str,k);
        assinaturas(i,:) = min(assinaturas(i,:),hash2);
    end
end
fprintf('Tempo de cálculo de MinHash é %f\n', toc(t));

% Calcula a distância de Jaccard entre todos os pares pela defenição.

t = tic;
J = zeros(Nu,Nu); % array para guardar distâncias
% h = waitbar(0,'Calculating');
for n1 = 1:Nu
    % waitbar(n1/Nu,h);
    for n2 = n1 + 1:Nu
        J(n1,n2) = sum(assinaturas(n1,:)~=assinaturas(n2,:))/k;
    end
end
% delete (h)
fprintf('Cálculo das distâncias por MinHash: %f segundos', toc(t));

% Com base na distância, determina pares com
% distância inferior a um limiar pré-defenido

threshold = 0.4; % limiar de decisão

% Array para guardar pares similares (user1, user2, distância)
SimilarUsers = zeros(1,3);
k = 1;
for n1 = 1:Nu
    for n2 = n1+1:Nu
        if J(n1,n2) <= threshold
            SimilarUsers(k,:) = [users(n1) users(n2) J(n1,n2)];
            k = k + 1;
        end
    end
end

SimilarUsers = sortrows(SimilarUsers,3)
fprintf('Número de pares de utilizadores inferiores a %f é: %f\n',threshold, length(SimilarUsers));
