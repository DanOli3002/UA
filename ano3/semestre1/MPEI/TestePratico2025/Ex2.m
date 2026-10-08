%% a)
pessoaTeste = persons{86};  % André
count1 = 0;
for i = 1:length(persons)
    pessoa = persons{i};
    if strcmp(pessoa,pessoaTeste)
        count1 = count1 + 1;
    end
end
count1

n = 600; %número de bits do filtro
k = 3; % número de funções de dispersão

FB = zeros(1,n); % inicia o bloom

for i = 1:length(persons)
    pessoa = persons{i};
    for j = 1:k
        hashvalue = kHashValues(pessoa, k);
        hashvalue = mod(hashvalue, length(FB)) + 1;
        FB(hashvalue) = FB(hashvalue) + 1;
    end
end

count2 = 0;
for i = 1:k
    hashvalue = kHashValues(pessoaTeste, k);
    hashvalue = mod(hashvalue, length(FB)) + 1;

    if FB(hashvalue) >= 1
        count2 = count2 + 1;
    end
end
count2
        
%% b)

countFalso = 0;
for i = 1:length(others)
    pessoa1 = others{i};
    for j = 1:k
        hashvalue = kHashValues(pessoa1, k);
        hashvalue = mod(hashvalue, length(FB)) + 1;

        if FB(hashvalue) >= 1
            countFalso = countFalso + 1;
        end
    end
end
countFalso
taxaDeFalsos = (countFalso/length())


