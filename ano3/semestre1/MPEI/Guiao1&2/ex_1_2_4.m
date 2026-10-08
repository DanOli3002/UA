%% teste do exercício dado
res1= zeros(1, 4); % 4 pq é 3 (lançamentos) + 1
for N = 0:3 
    res1(N+1)= simuprob(0.5,3,N,1e5);
end

figure(1)
stem(0:3,res1)
grid on
xlabel("Número de caras")
ylabel("Probabilidade")
title("Lançamento de 3 moedas")

%% teste do 1.2.2
res2= zeros(1, 16);
for N = 0:15
    res2(N+1)= simuprob(0.5,15,N,1e5);
end

figure(2)
stem(0:15,res2)
grid on
xlabel("Número de caras")
ylabel("Probabilidade")
title("Lançamento de 15 moedas")

%% teste com 20 lançamentos
res3= zeros(1,21);
for N = 0:20
    res3(N+1)= simuprob(0.5,20,N,1e5);
end

figure(3)
stem(0:20,res3)
grid on
xlabel("Número de caras")
ylabel("Probabilidade")
title("Lançamento de 20 moedas")

%% teste com 40 lançamentos
res4= zeros(1,41);
for N = 0:40
    res4(N+1)= simuprob(0.5,40,N,1e5);
end

figure(4)
stem(0:40,res4)
grid on
xlabel("Número de caras")
ylabel("Probabilidade")
title("Lançamento de 40 moedas")

%% teste com 100 lançamentos
res5= zeros(1,101);
for N = 0:100
    res5(N+1)= simuprob(0.5,100,N,1e5);
end

figure(5)
stem(0:100,res5)
grid on
xlabel("Número de caras")
ylabel("Probabilidade")
title("Lançamento de 100 moedas")