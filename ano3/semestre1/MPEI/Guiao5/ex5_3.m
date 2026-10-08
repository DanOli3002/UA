
% Dados de treino
X = [1 0 1 1;  % fiçme 1
     0 1 0 0;  % filme 2
     0 1 0 1;  % filme 3
     1 0 1 1;  % filme 4
     1 1 0 1;  % filme 5
     0 1 0 0]; % filme 6

classes = categorical({'Interessa', 'Não Interessa', 'Interessa', ...
                       'Interessa', 'Interessa', 'Não Interessa'});

numFilmes = length(classes);
numInteressa = sum(classes == "Interessa");
numNaoInteressa = sum(classes == "Não Interessa");

pInteressa = numInteressa / numFilmes;
pNaoInteressa = numNaoInteressa / numFilmes;

disp(['P(Interessa) = ', num2str(pInteressa)]);
disp(['P(Não Interessa) = ', num2str(pNaoInteressa)]);

XInteressa = X(classes == "Interessa", :);
XNaoInteressa = X(classes == "Não Interessa", :);

pCaracInteressa = (sum(XInteressa == 1) + 1) ./ (size(XInteressa, 1) + 2);
pCaracNaoInteressa = (sum(XNaoInteressa == 1) + 1) ./ (size(XNaoInteressa, 1) + 2);

disp('P(Caracteristica | Interessa):');
disp(pCaracInteressa);
disp('P(Caracteristica | Não Interessa):');
disp(pCaracNaoInteressa);

function predictedClass = predictNaiveBayes(filmeCarac, pInteressa, pNaoInteressa, pCaracInteressa, pCaracNaoInteressa)
    logProbInteressa = log(pInteressa) + sum(log(pCaracInteressa(filmeCarac == 1))) + sum(log(1 - pCaracInteressa(filmeCarac == 0)));
    logProbNaoInteressa = log(pNaoInteressa) + sum(log(pCaracNaoInteressa(filmeCarac == 1))) + sum(log(1 - pCaracNaoInteressa(filmeCarac == 0)));
    
    if logProbInteressa > logProbNaoInteressa
        predictedClass = "Interessa";
    else
        predictedClass = "Não Interessa";
    end
end

% a)

filmeA = [1, 0, 1, 1];
predictedClassA = predictNaiveBayes(filmeA, pInteressa, pNaoInteressa, pCaracInteressa, pCaracNaoInteressa);
disp(['Previsão [1, 0, 1, 1]: ', char(predictedClassA)]);

% b)

filmeB = [0, 1, 0, 0];
predictedClassB = predictNaiveBayes(filmeB, pInteressa, pNaoInteressa, pCaracInteressa, pCaracNaoInteressa);
disp(['Previsão [0, 1, 0, 0]: ', char(predictedClassB)]);

% c)

filmeC = [1, 1, 0, 0];
predictedClassC = predictNaiveBayes(filmeC, pInteressa, pNaoInteressa, pCaracInteressa, pCaracNaoInteressa);
disp(['Previsão [1, 1, 0, 0]: ', char(predictedClassC)]);

