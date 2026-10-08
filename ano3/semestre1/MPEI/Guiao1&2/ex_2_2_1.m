%% A)
% “A– a soma dos dois valores é igual a 9”

N= 1e5; % número de experiências
n = 6; % número de caras do dado
experiencias = randi(n,2,N);

contadorA = 0;

% maneira do professor para o for de A
% res = sum(experiencias) == 9;
% prob = sum(res)/N;

for i= 1:N
    auxA= experiencias(:,i);
    % vai buscar todas as linhas da coluna i
    if sum(auxA)==9
        % verificar se a soma dos lançamentos é 9
        contadorA = contadorA + 1;
    end
end

prob_A = contadorA / N

%% B)
% “B– o segundo valor é par”

N= 1e5; % número de experiências
n = 6; % número de caras do dado
experiencias = randi(n,2,N);

contadorB = 0;

for i= 1:N
    auxB= experiencias(2,i);
    % vais buscar o valor do segundo lançamento
    if rem(auxB,2) == 0
        % rem dá o resto da divisão de auxB pr 2
        % verificar se o segundo laçamento é par
        contadorB = contadorB + 1;
    end
end

prob_B = contadorB / N

%% C)
% “C– pelo menos um dos valores é igual a 5”

N= 1e5; % número de experiências
n = 6; % número de caras do dado
experiencias = randi(n,2,N);

contadorC = 0;

for i= 1:N
    auxC1= experiencias(1,i);
    auxC2= experiencias(2,i);
    % vai buscar todas as linhas da coluna i
    if (auxC1 == 5) || (auxC2 == 5)
        % verificar um dos lançamentos é 5
        contadorC = contadorC + 1;
    end
end

prob_C = contadorC / N

%% D)
% “D– nenhum dos valores é igual a 1”

N= 1e5; % número de experiências
n = 6; % número de caras do dado
experiencias = randi(n,2,N);

contadorD = 0;

for i= 1:N
    auxC1= experiencias(1,i);
    auxC2= experiencias(2,i);
    % vai buscar todas as linhas da coluna i
    if (auxC1 ~= 1) && (auxC2 ~= 1)
        % verificar nenhum dos lançamentos é 1
        contadorD = contadorD + 1;
    end
end

prob_D = contadorD / N

% teoricamente
% A
% casos possíveis 36
% casos favoráveis 4
% prob_A = 4/36

% B 
% casos possíveis 36
% casos favoráveis X [1,2,3,4,5,6],[2,4,6] X = 6 * 3 = 18
% prob_B = 18/36

% Prob(A)&Prob(B) = 4/36 * 18/36 = 2/36
% Os acontecimentos A e B não são independentes

% C
% casos possíeveis 36
% casos possíveis 11 (51,52,53,54,55,56,15,25,35,45,65)
% prob_C = 11/36

% D
% casos possíveis 36
% casos favoráveis [2,3,4,5,6],[2,3,4,5,6] = 5 * 5 = 25
% prob_D = 25/36

% Prob(C)&Prob(D) = 11/36 * 25/36 = 275/1296
