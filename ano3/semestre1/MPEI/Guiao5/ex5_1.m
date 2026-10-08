%% a)

frases = {'just plain boring'
          'entirely predictable and lacks energy'
          'no suprises and very few laughts'
          'very powerful'
          'the most fun film of the summer'};
% guarda as frases, se fizermos frases{1} resulat em 'just plain boring'

function [palavrasUnicas] = CriarPalavrasUnicas(frase)
todas = strjoin(frase,' ');
% junta todas as frases numa só com um ' ' entre elas

palavras = regexp(todas,'\s+','split');
% separa as palavras de todas

palavrasUnicas = unique(lower(palavras));
% verifica as palavras únicas do resultado das palavras
end

palavrasU = CriarPalavrasUnicas(frases);

%% b)
matriz = cell(length(frases) + 1, length(palavrasU));
matriz(1,:) = palavrasU;  % Definir o cabeçalho com palavras únicas

% Preencher a matriz com zeros
for j = 2:(length(frases) + 1)
    for i = 1:length(palavrasU)
        matriz{j, i} = 0;
    end
end

% Atualizar a matriz com contagem para cada frase
for idx = 1:length(frases)
    palavrasFrasesIdx = regexp(frases{idx},'\s+','split');
    for j = 1:length(palavrasFrasesIdx)
        for k = 1:length(palavrasU)
            if strcmp(palavrasFrasesIdx{j}, palavrasU{k}) == 1
                matriz{idx + 1, k} = matriz{idx + 1, k} + 1;
            end
        end
    end
end

%% c)

categorias = {'-','-','-','+','+'};

%% d)
totalPositivos = sum(strcmp(categorias,'+'));
totalNegativos = sum(strcmp(categorias,'-'));

ProbPositivo = totalPositivos/length(categorias);
ProbNegativo = totalNegativos/length(categorias);

contagemPositivos = zeros(1,length(palavrasU));
contagemNegativos = zeros(1,length(palavrasU));

% Contar ocorrências de cada palavra em frases positivas e negativas
for i = 1:length(frases)
    for j = 1:length(palavrasU)
        if strcmp(categorias{i},'+')
            contagemPositivos(j) = contagemPositivos(j) + matriz{i+1,j};
        else
            contagemNegativos(j) = contagemNegativos(j) + matriz{i+1,j};
        end
    end
end

totalPalavrasPositivas = sum(contagemPositivos);
totalPalavrasNegativas = sum(contagemNegativos);

ProbPalavraPositivo = (contagemPositivos + 1)/(totalPalavrasPositivas + length(palavrasU));
ProbPalavraNegativo = (contagemNegativos + 1)/(totalPalavrasNegativas + length(palavrasU));

% Frase de teste
fraseTeste = 'predictable no fun';
palavrasTeste = regexp(fraseTeste,'\s+','split');

ProbPositiva = ProbPositivo;
ProbNegativa = ProbNegativo;

for i = 1:length(palavrasTeste)
    for j = 1:length(palavrasU)
        if strcmp(palavrasTeste{i}, palavrasU{j})
            ProbPositiva = ProbPositiva * ProbPalavraPositivo(j);
            ProbNegativa = ProbNegativa * ProbPalavraNegativo(j);
        end
    end
end

if ProbPositiva > ProbNegativa
    disp('A frase de teste é mais provável de ser positiva (+)');
else
    disp('A frase de teste é mais provável de ser negativa (-)');
end

