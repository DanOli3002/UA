%% a)

N = 1e5;
media = 14;
desvioPadrao = 2;

experiencias = media + randn(1,N) * desvioPadrao;

class = sum(experiencias > 12 & experiencias < 16)/N;

fprintf("A Prob de um aluno ter classificação entre 12 e 16 é %f\n", class);

%% b)

N = 1e5;
media = 14;
desvioPadrao = 2;

experiencias = media + randn(1,N) * desvioPadrao;

class = sum(experiencias > 10 & experiencias < 18)/N;

fprintf("A Prob dos alunos terem classificação entre 10 e 18 é %f\n", class);

%% c)

N = 1e5;
media = 14;
desvioPadrao = 2;

experiencias = media + randn(1,N) * desvioPadrao;

class  = sum(experiencias >= 10)/N;

fprintf("A Prob de um aluno passar é %f\n",class);
