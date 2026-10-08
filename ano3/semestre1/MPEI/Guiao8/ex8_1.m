%% b)
% a matriz tem que ser a transposta daquela que está no guião
T = [0.7 0.2 0.1; 0.2 0.3 0.5; 0.3 0.3 0.4]'

%% c)
% começa em no estado sol
v1 = [1;0;0];
% depois de 2 passos qual a prob de estar chuva
a = T^2 * v1;
resposta = a(3)

%% d)

elem = []
for i = 1:20
    Tn = T^i;

    elem = [elem Tn(:)]
end

plot(elem')

%% e)
tolerance = 1e-4;

% matriz
T_n = T;
n = 0;

while true
    T_next = T_n * T; % Calcular T^(n+1)
    max_diff = max(abs(T_next - T_n), [], 'all'); % Diferença máxima entre T^n e T^(n+1)
    
    if max_diff < tolerance
        break; % Parar se o critério de convergência for satisfeito
    end
    
    T_n = T_next; % Atualizar T^n
    n = n + 1;
end

fprintf('Número de passos para convergência: %d\n', n);
disp('Matriz estacionária (T^n):');
disp(T_next);

%% e)

Tn = T;
Tn1 = Tn * T;
dif = max(abs(Tn1(:) - Tn(:))); % or max(max(abs(Tn1 - Tn)))

iter = 1;
while dif > 1e-4
    iter
    Tn1 = Tn * T;
    dif = max(max(abs(Tn1 - Tn)));
    Tn = Tn1;
    iter = iter + 1;
end


%% f)

M = [T - eye(3);ones(1,3)];

x = [0 0 0 1]';

u = M\x;

fprintf("Prob. limite dos estados: %.4f (sol) %.4f (nuvem) %.4f (chuva)\n", u(1), u(2), u(3));
