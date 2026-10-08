%% a)

% Load do data da tabela
data = readcell('C:\UA\ano3\semestre1\MPEI\Guiao5\PL5Ex2(in).csv');

caracteristicas = data(2:end, 2:end-1); % todas colunas menos 'Email' e 'Class'
categorias = data(2:end, end); % obtém a última coluna 'Class'

X = cell2mat(caracteristicas);

Y = categorical(categorias);

header = {'offer', 'click', 'free', 'money', 'meeting', 'project', 'win', 'urgent', 'prize'};
newX = array2table(X, 'VariableNames', header);

% Display
disp('X:');
disp(newX);
disp('Y:');
disp(Y);

%% b)

numLinhas = size(X,1);

randIndices = randperm(numLinhas);

numTreino = round(0.7 * numLinhas);

treinoIndices = randIndices(1:numTreino);
testeInidices = randIndices(numTreino + 1:end);

XTreino = X(treinoIndices,:);
YTreino = Y(treinoIndices,:);

Xteste = X(testeInidices,:);
Yteste = Y(testeInidices,:);

% Display
disp('XTreino:');
disp(array2table(XTreino, 'VariableNames', header));
disp('YTreino:');
disp(YTreino);

disp('Xteste:');
disp(array2table(Xteste, 'VariableNames', header));
disp('YTeste:');
disp(Yteste);

%% c)

% Conta as occurrências de cada categoria
numSpam = sum(YTreino == "SPAM");
numOK = sum(YTreino == "OK");

% Calcula a probabilidade (a priori)
pSpam = numSpam / numTreino;
pOK = numOK / numTreino;

% Display
disp("Probabilidades:");
disp(['P(SPAM) = ', num2str(pSpam)]);
disp(['P(OK) = ', num2str(pOK)]);

%% d)

numCaracteristicas = size(XTreino, 2);
pCarcacteristicaSpam = (sum(XTreino(YTreino == "SPAM", :) == 1) + 1) ./ (numSpam + 2);
pCaracteristicaOK = (sum(XTreino(YTreino == "OK", :) == 1) + 1) ./ (numOK + 2);

% Display
disp('Probabilidades da caracteristicas SPAM:');
disp(pCarcacteristicaSpam);
disp('Probabilidades da caracteristicas OK:');
disp(pCaracteristicaOK);

%% e)



%% f)
