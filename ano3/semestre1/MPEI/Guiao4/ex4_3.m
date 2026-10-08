%% a)
% média de N1 = 14
% média de N2 é 20% superior, ou seja, N2 = 1.2 * 14 = 16.8
% Variância N1 e N2 devem ser 1/4 de média de cada uma, ou seja
% Variância N1 = 1/4 * 14 = 3.5
% Variância N2 = 1/4 * 16.8 = 4.2

numalunos = 120; % número de alunos

mediaN1 = 14;
varianciaN1 = mediaN1/4;
% desvio é raiz quadrada da variancia
desvioPadraoN1 = sqrt(varianciaN1);

mediaN2 = 1.2 * mediaN1;
varianciaN2 = mediaN2/4;
% desvio é raiz quadrada da variancia
desvioPadraoN2 = sqrt(varianciaN2);

% distruibições normais
N1 = round(mediaN1 + desvioPadraoN1 * randn(numalunos,1));
N2 = round(mediaN2 + desvioPadraoN2 * randn(numalunos,2));

% Ajustar notas para que não ultrapassem 20
N1(N1 > 20) = 20;  % Limitar N1 a 20
N2(N2 > 20) = 20;  % Limitar N2 a 20
% adicionei isto pq de vez em quando gerava valores acima de 20

% Só imprimir 10 alunos para ver se esta bem
fprintf("Notas geradas para N1 e N2\n")
for i = 1:10
    fprintf('%d\t%d\t%d\n', i, N1(i), N2(i));
end

%% b)

% Tabela de contagem de frequência conjunta
joint_freq = zeros(21, 21);

for i = 1:numalunos
    joint_freq(N1(i)+1,N2(i)+1) = joint_freq(N1(i)+1, N2(i)+1) + 1;
end

joint_prob = joint_freq/numalunos;

stem3(0:20, 0:20, joint_prob);
xlabel('N1');
ylabel('N2');
zlabel('Probabilidade');
title('Função de Massa de Probabilidade Conjunta de N1 e N2');
grid on;

%% c)

% covariância
covN1N2 = sum((N1 - mediaN1) .* (N2 - mediaN2)) / numalunos;

% coeficiente de correlação
correlacao = covN1N2 / sqrt(varianciaN1 * varianciaN2);

fprintf('A covariância entre N1 e N2 é: %f\n', covN1N2);
fprintf('O coeficiente de correlação entre N1 e N2 é: %f\n', correlacao);

%% d)


