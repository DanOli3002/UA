%% a)

N= 1e5; % número de experiências
n= 20; % 20 dardos
m= 100; % 100 alvos

% randi(100,20,100) % um número aleatório até 100, e
% fazer uma matriz com 20 colunas(dardos) e 100 linhas(alvos)

experiencias= randi(m,n,N);

contador = 0;
% serve para contar os casos onde os alvos foram
% atingidos somente uma vez
for i= 1:N
    aux= experiencias(:,i);
    % vai buscar todas as linhas da coluna i
    if length(unique(aux))==n
        % verifica se os dardos atingiram alvos diferentes
        contador= contador+1;
    end
end

prob_a= contador/N

%% b)

N= 1e5; % número de experiências
n= 20; % 20 dardos
m= 100; % 100 alvos

experiencias= randi(m,n,N);

contador = 0;
% serve para contar os casos onde os alvos foram
% atingidos pelo menos duas vezes
for i= 1:N
    aux= experiencias(:,i);
    % vai buscar todas as linhas da coluna i
    if length(unique(aux))<n
        % verifica se os dardos atingiram pelo menos 1 alvo duas vezes
        contador= contador+1;
    end
end

prob_b= contador/N

%% c)

N= 1e5; % número de experiências
m1= 1000; % 1000 alvos
m2= 100000; % 100000 alvos

prob_c= zeros(1,10);
for n= 10:10:100
    experiencias= randi(m1,n,N);
    
    contador = 0;
    % serve para contar os casos onde os alvos foram
    % atingidos pelo menos duas vezes
    for i= 1:N
        aux= experiencias(:,i);
        % vai buscar todas as linhas da coluna i
        if length(unique(aux))<n
            % verifica se os dardos atingiram pelo menos 1 alvo duas vezes
            contador= contador+1;
        end
    end
    prob_c(n/10)= contador/N;
end

figure(1)
subplot(1,2,1)
% sobplot serve para "dividir" o ecra do
% resultado para comparações
plot(10:10:100,prob_c,'b-*')
title('m = 1000')

prob_c= zeros(1,10);
for n= 10:10:100
    experiencias= randi(m2,n,N);
    
    contador = 0;
    % serve para contar os casos onde os alvos foram
    % atingidos pelo menos duas vezes
    for i= 1:N
        aux= experiencias(:,i);
        % vai buscar todas as linhas da coluna i
        if length(unique(aux))<n
            % verifica se os dardos atingiram pelo menos 1 alvo duas vezes
            contador= contador+1;
        end
    end
    prob_c(n/10)= contador/N;
end

figure(1)
subplot(1,2,2)
plot(10:10:100,prob_c,'b-*')
title('m = 100000')

%% d)

N= 1e5; % número de experiências
n= 100; % 100 dardos
aux1= [200, 500, 1000, 2000, 5000, 10000, 20000, 50000, 100000];

prob_d= zeros(size(aux1));
for j= 1:length(aux1)
    m= aux1(j);
    experiencias= randi(m,n,N);
    contador = 0;
    for i= 1:N
        aux2= experiencias(:,i);
        if length(unique(aux2))<n
            contador= contador+1;
        end
    end
    prob_d(j)= contador/N;
end

figure(2)
plot(aux1,prob_d,'b-*')
