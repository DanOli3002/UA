
lambda = 0.02 * 100;
k = 1; % existir 1 erro num livro

pf = 0;

for i = 0:k % ter as probabilidades onde tem 0 erros e 1 erro
    pf = pf + ((lambda^i)/factorial(i))*exp(-lambda);
end

fprintf("A Prob de o livro ter no máximo 1 erro é %f\n",pf);
