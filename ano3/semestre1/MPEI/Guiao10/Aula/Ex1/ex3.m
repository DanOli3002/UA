%% Ex3 Minhash

frase1 = 'Gosto muito de teatro e cinema.';
frase2 = 'O teatro é mais dificil que o cinema.';
frase3 = 'Há muita gente que não gosta de teatro.';
frase4 = 'O teatro e o cinema são duas formas de cultura.';

fraseCell = {frase1, frase2,frase3,frase4};
Nu = 4;
k = 4;
shinglesize = 3;

FraseMinHash = zeros(Nu, k);

for FraseN=1:Nu
    % obter frase
    Frase = fraseCell{1,FraseN};
    % gerar k vezes (hash func)
    for hashFuncN=1:k
        % Criar um vetor para armazenar os valores de hash dos shingles
        % O tamanho do vetor é igual ao número de shingles da frase (45)
        hashArr=zeros(1,strlength(Frase)-shinglesize+1);
        % Dividir a frase em shingles de tamanho "shinglesize"
        for ShingleN=1:strlength(Frase)-shinglesize+1
            % Obter o shingle atual (substring de tamanho "shinglesize")
            key = char(Frase(ShingleN:(ShingleN+shinglesize-1)));
            % Calcular o hash para o shingle atual usando a função hf1
            % e o índice da função de hash (hashFuncN)
            % Somar 1 ao resultado para evitar valores iguais a zero
            hashArr(ShingleN) = hf1(key,hashFuncN)+1;
        end
        % Guardar o menor valor de hash gerado pelos shingles para
        % a frase atual e a função de hash atual
        FraseMinHash(FraseN,hashFuncN) = min(hashArr);
    end
end
Distance = zeros(4,4);

for n1=1:length(FraseMinHash)
    for n2=n1:length(FraseMinHash)
        % Comparar assinaturas de duas frases
        isMatch = FraseMinHash(n1,:)==FraseMinHash(n2,:);
        % Calcular a distância como 1 - similaridade
        Distance(n1,n2) = 1-sum(isMatch)/length(isMatch);
    end
end