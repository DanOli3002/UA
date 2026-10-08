function [keys] = GenerateString(N, i_min, i_max, char_vec, prob_vec)
    % Verifica se as probabilidades foram fornecidas
    if nargin < 5
        % Equiprobabilidade
        prob_vec = ones(size(char_vec)) / length(char_vec);
    end
    
    % Cell array para armazenar as chaves
    keys = {};
    
    % contador de keys
    count = 0;

    while count < N
        % Gerar comprimento aleatório entre i_min e i_max
        random_length_key = randi([i_min, i_max]);

        % Gerar a key
        key = '';
        for i = 1:random_length_key
            index = randsample(1:length(char_vec), 1, true, prob_vec);
             % Concatenar o caractere à key
            key = [key, char_vec(index)];
        end
        
        % Verifica if key já existe
        if ~ismember(key, keys)
            keys{end + 1} = key;    % Adiciona a chave ao cell array
            count = count + 1;
        end
    end
end


