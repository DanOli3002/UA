%% a)

lambda = 60; % 4 * 15 (4 segundos e 15 mensagens em media por segundo)
k = 0; % receber nenhuma mensagem

p = ((lambda^k)/factorial(k))*exp(-lambda);

fprintf("A Prob de o servidor receber nenhuma mensagem é %e\n",p);

%% b)

lambda = 60;
k = 40;

pf = 0;

for i = 0:k
    pf = pf + ((lambda^i)/factorial(i))*exp(-lambda);
end

pf = 1 - pf;

fprintf("A Prob de o servidor receber mais de 40 mensagens é %e\n",pf);
