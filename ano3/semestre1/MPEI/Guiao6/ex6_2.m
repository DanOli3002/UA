%% 1&2-prof)
% Temos de correr primeiro o código da 6.1
% Precisamos também do string2hash.m (que está num link no guião)


% exemplo que o prof fez para um dos três tamanhos e um dos métodos
T = 5e5; % tamanho 5 * 10^5
hashcodes = zeros(1,N); % tamanho de hashcodes para o tamanho das chaves
atrib = zeros(1,T);
numColisao = 0;
for i = 1:N
    chave = chaves{i};
    aux = string2hash(chave);
    aux = mod(aux,T) + 1;
    hashcodes(i) = aux;
    atrib(aux) = atrib(aux) + 1;
    if atrib(aux) > 1
        numColisao = numColisao + 1;
    end
end

figure(1)
histogram(hashcodes,100)
numColisao
nMaxAtrib = max(atrib)

%% 1&2)

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

% Configuração dos parâmetros
T_sizes = [5e5, 1e6, 2e6]; % Tamanhos das tabelas hash
hashMethods = {'djb2', 'sdbm'}; % Métodos de dispersão
N = 1e5; % número de chaves geradas
charSet = ['A':'Z' 'a':'z']; % array
imin = 6;
imax = 20;

% Gerar chaves
chaves = gerarChaves(N, imin, imax, charSet);

% Criar figura para os histogramas
figure;
plotIndex = 1;

% Loop pelos tamanhos das tabelas hash e métodos de dispersão
for t = 1:length(T_sizes)
    T = T_sizes(t); % Tamanho atual da tabela hash
    
    for m = 1:length(hashMethods)
        method = hashMethods{m}; % Método de dispersão atual
        
        % Inicializar variáveis
        hashcodes = zeros(1, N); % Vetor de hashcodes
        atrib = zeros(1, T); % Vetor de atribuições
        numColisao = 0; % Contador de colisões
        
        % Inserção de chaves na tabela hash
        for i = 1:N
            chave = chaves{i};
            aux = string2hash(chave, method); % Calcular hashcode
            aux = mod(aux, T) + 1; % Ajustar ao tamanho da tabela
            hashcodes(i) = aux;
            atrib(aux) = atrib(aux) + 1;
            if atrib(aux) > 1
                numColisao = numColisao + 1;
            end
        end
        
        % Exibir resultados
        fprintf('Resultados para T = %d, Método = %s:\n', T, method);
        fprintf('Número de colisões: %d\n', numColisao);
        fprintf('Número máximo de atribuições a uma posição: %d\n', max(atrib));
        
        % Plotar histograma no subplot correspondente
        subplot(length(T_sizes), length(hashMethods), plotIndex);
        histogram(hashcodes, 100);
        title(sprintf('T = %d, Método = %s', T, method));
        xlabel('Hashcode');
        ylabel('Frequência');
        plotIndex = plotIndex + 1;
    end
end

