
function chaves = gerarChaves(N, imin, imax, ch, probs)
    if nargin < 5
        % ou seja, não é dado o probs, então é equiprováveis
        chaves = cell(1, N);

        for i= 1:N
            % cria chaves de comprimento aleatórios
            chaveLength = randi([imin, imax]);
            aux = randi(length(ch),1,chaveLength);
            % o aux gera números aleatórios para buscar os "indices" no ch
            chaves{i} = ch(aux);
            % o ch(aux) vai buscar o elemento de indiece aux do array
        end
        
        % verificar se todas as chaves são diferentes
        chavesUnicas = unique(chaves);
        Naux = length(chavesUnicas);
        while Naux < N
            chaveLength = randi([imin, imax]);
            aux = randi(length(ch),1,chaveLength);
            chave = ch(aux);
            % o ismember vê se percente
            if ~ismember(chave,chaves) 
                Naux = Naux + 1;
                chaves{Naux} = chave;
            end
        end
    elseif nargin == 5
        % acontece se é dado os 5 argumentos
        chaves = cell(1, N);

        for i = 1:N
            % cria chaves de comprimento aleatórios
            chaveLength = randi([imin, imax]);

            chaves{i} = randsample(ch, chaveLength, true, probs);
        end
        % verificar se as chaves são diferentes
        chavesUnicas = unique(chaves);
        Naux = length(chavesUnicas);
        while Naux < N
            chaveLength = randi([imin, imax]);
            aux = randi(length(ch),1,chaveLength);
            chave = ch(aux);
            % o ismember vê se percente
            if ~ismember(chave,chaves) 
                Naux = Naux + 1;
                chaves{Naux} = chave;
            end
        end
    end
end

N = 101000; % número de chaves geradas (101000 palavras diferentes), as 1000
% primeiras serão usadas em 1) e as restantes 100000 nas 3), fazemos ao
% mesmo tempo para garantir que todas as palavras serão diferentes, para
% não termos falsos positivos
ch = ['A':'Z' 'a':'z']; % array
imin = 6;
imax = 20;

% chama a função criada previamente
chaves = gerarChaves(N, imin, imax, ch);

%% 1)

n = 8000; % número de bits do filtro
m1 = chaves(1:1000); % número de elementos do conjunto 1
m2 = chaves(1001:end); % número de elementos do conjunto 2
k = 3; % número de funções de dispersão

% isto cria um vetor preenchido a zero
function FB = inicializar(num_bits)
    FB = false(1,num_bits);
end

function FB = adicionar(FB,palavras,num_dispersao)
    for i = 1:length(palavras)
        palavra = palavras{i};
        for j = 1:num_dispersao
            hash_value = string2hash([palavra num2str(j)]);
            hash_value = mod(hash_value,length(FB)) + 1;
            FB(hash_value) = true;
        end
    end
end

function aux = testar(FB,palavras,num_dispersao)
    aux = false(1, length(palavras)); % Inicializa vetor de resultados
    for j = 1:length(palavras)
        palavra = palavras{j};
        pertence = true; % Supõe que pertence inicialmente
        for i = 1:num_dispersao
            hash_value = string2hash([palavra num2str(i)]);
            hash_value = mod(hash_value,length(FB)) + 1;
            if FB(hash_value) == false
                pertence = false; % Se algum bit não estiver marcado, não pertence
                break
            end
        end
        aux(j) = pertence; % Armazena o resultado para a palavra atual
    end
end

% inicializar o Bloom Filter
FB = inicializar(n);

% adicionar as palavras do conjunto U1
FB = adicionar(FB,m1,k);

% testar para o conjunto U1
resultados_U1 = testar(FB,m1,k);

%% 2)

% contar quantos resultados são falsos negativos
falsos_negativos = sum(~resultados_U1);

fprintf("Foram encontrados %d falsos negativos no conjunto U1.\n", falsos_negativos);

%% 3)

% testar as palavras do conjunto U2
resultados_U2 = testar(FB,m2,k);

% contar falsos positivos em U2
falsos_positivos = sum(resultados_U2);

% fazer em percentagem
percentagem_falsos_positivos = (falsos_positivos/length(m2)) * 100;

fprintf("Percentagem dos falsos positivos é %.2f%%\n", percentagem_falsos_positivos);


%% código feito pelo prof

fn = 0;
for i = 1:length(m1)
    aux = testar(FB,m1,k);
    if aux == false
        fp = fp + 1;
    end
end
fn

fp = 0;
for i = 1:length(m2)
    aux = testar(FB,m2,k);
    if aux == true
        fp = fp + 1;
    end
end
fp = (fp/length(m2)) * 100
