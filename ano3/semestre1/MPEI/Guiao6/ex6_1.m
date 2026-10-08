%% 1)
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

%% 2)
N = 1e5; % número de chaves geradas
ch = ['A':'Z' 'a':'z']; % array
imin = 6;
imax = 20;

% chama a função criada previamente
chaves = gerarChaves(N, imin, imax, ch);