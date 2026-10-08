%% a)
N= 1e5; % número de experiências
p = 0.5; % probabilidade de ser rapaz
k = 1; % número de rapaz
n = 2; % número de filhos
lancamentos = rand(n,N) > p;
sucessos= sum(lancamentos)>=k;
probSimulacao_a= sum(sucessos)/N

%% c)

N= 1e5; % número de experiências
p = 0.5; % probabilidade de ser rapaz
n = 2; % número de filhos
lancamentos = rand(n,N) > p;
casospossiveis= sum(lancamentos)>=1;
% famílias com pelo menos um rapaz
casosfavoraveis= sum(lancamentos)==2;
% famílias com 2 rapazes
probSimulacao_c= sum(casosfavoraveis)/sum(casospossiveis)

%% d)

N= 1e5; % número de experiências
p = 0.5; % probabilidade de ser rapaz
n = 2; % número de filhos
lancamentos = rand(n,N) > p;
casospossiveis= lancamentos(1,:);
% famílias com primeiro filho rapaz
casosfavoraveis= sum(lancamentos)==2;
% famílias com 2 rapazes
probSimulacao_d= sum(casosfavoraveis)/sum(casospossiveis)

%% e)

N= 1e5; % número de experiências
p = 0.5; % probabilidade de ser rapaz
n = 5; % número de filhos
lancamentos = rand(n,N) > p;
casospossiveis= sum(lancamentos)>=1;
% famílias com pelo menos um rapaz
casosfavoraveis= sum(lancamentos)==2;
% famílias com 2 rapazes
probSimulacao_e= sum(casosfavoraveis)/sum(casospossiveis)

%% f)

N= 1e5; % número de experiências
p = 0.5; % probabilidade de ser rapaz
n = 5; % número de filhos
lancamentos = rand(n,N) > p;
casospossiveis= sum(lancamentos)>=1;
% famílias com pelo menos um rapaz
casosfavoraveis= sum(lancamentos)>=2;
% famílias com pelo menos 2 rapazes
probSimulacao_f= sum(casosfavoraveis)/sum(casospossiveis)

