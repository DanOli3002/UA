%%
% anterior 0 erros -> proximo 1 erro 0.09, 2+ erros 0.01
% anterior COM erros -> prox 1 erro 0.4, 2+ erros 0.1
% Cadeia Markov 3 estados (1 -> 0 erros, 2 -> 1 erro, 3 -> 2+ erros)
% 1o pacote -> 3 erros !!!

% a) T e x0 ?
%     1   2    3
T = [ 0.9 0.09 0.01
      0.5 0.4  0.1
      0.5 0.4  0.1 ]'

v = [zeros(1,2) 1]'

% b) prob 4o pacote (para os 3 estados)
% usar 3 em vez de 4, pq ja existe 1 estado defenido
T4 = (T^3) * v
fprintf("Sem erros: %d\n", T4(1));
fprintf("Um erro: %d\n", T4(2));
fprintf("Dois ou mais erros: %d\n", T4(3));

% c) prob estacionaria
% diff prob < 0.001
% prob 2+ erros ?

tol = 0.001;
diff = Inf;
controlo = 0;
v_curr = v;

while diff > tol
    v_next = T * v_curr;
    diff = max(abs(v_next - v_curr)); 
    v_curr = v_next; 
    controlo = controlo + 1;
end

% Probabilidade estacionária
prob_estacionaria = v_curr;

% Resultados
fprintf("Convergência alcançada após %d iterações.\n", controlo);
fprintf("Probabilidade estacionária (sem erros): %.4f\n", prob_estacionaria(1));
fprintf("Probabilidade estacionária (um erro): %.4f\n", prob_estacionaria(2));
fprintf("Probabilidade estacionária (dois ou mais erros): %.4f\n", prob_estacionaria(3));

% Probabilidade de perda de pacote com código corretor de erros
prob_perda_com_corr = prob_estacionaria(3);
fprintf("Probabilidade de perda de pacote (com código corretor de erros): %.4f\n", prob_perda_com_corr);

% Probabilidade de perda de pacote sem código corretor de erros
% Sem código corretor, qualquer erro (1 ou 2+) é considerado perda:
prob_perda_sem_corr = prob_estacionaria(2) + prob_estacionaria(3);
fprintf("Probabilidade de perda de pacote (sem código corretor de erros): %.4f\n", prob_perda_sem_corr);