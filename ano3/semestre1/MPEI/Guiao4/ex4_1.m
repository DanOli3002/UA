% X\Y    0    1    2
%   0    0.3  0.2  0
%   1    0.1  0.15 0.05
%   2    0    0.1  0.1

%% a)
A = [0.3 0.2 0;0.1 0.15 0.05;0 0.1 0.1];
pY = sum(A,1)
pX = sum(A,2)


%% b)
% cálculo teórico

% E[X] = 0 * 0.5 + 1 * 0.3 + 2 * 0.2 = 0.7
% Var[X] = E[X^2] - (E[X])^2 =
% = 0^2 * 0.5 + 1^2 * 0.3 + 2^2 * 0.2 - (0.7)^2 = 0.61

% E[Y] = 0 * 0.4 + 1 * 0.45 + 2 * 0.15 = 0.75
% Var[Y] = E[Y^2] - (E[Y])^2 = 
% = 0^2 * 0.4 + 1^2 * 0.45 + 2^2 * 0.15 - (0.75)^2 = 0.4875

A = [0.3 0.2 0;0.1 0.15 0.05;0 0.1 0.1];
pX = sum(A,2);
for i = 1:length(A)
    mediaX(i) = sum((i-1)*pX(i));
end
mediaX = sum(mediaX)

for i = 1:length(A)
    media2X(i) = sum(((i-1)^2)*pX(i));
end
media2X = sum(media2X);

VarX = media2X - mediaX^2

pY = sum(A,1);
for i = 1:length(A)
    mediaY(i) = sum((i-1)*pY(i));
end
mediaY = sum(mediaY)

for i = 1:length(A)
    media2Y(i) = sum(((i-1)^2)*pY(i));
end
media2Y = sum(media2Y);

VarY = media2Y - mediaY^2

%% c)
% cálculo teórico

% E[XY] = 1 * 1 * 0.15 + 1 * 2 * 0.05 + 2 * 1 * 0.1 + 2 * 2 * 0.1 = 0.85
% Cov(X,Y) = E[XY] - E[X]*E[Y] = 0.85 - 0.7 * 0.75 = 0.325
% CC(X,Y) = Cov(X,Y)/𝜎𝑋*𝜎𝑌 = 0.325/sqr(0.61)*sar(0.4875) = 0.596

A = [0.3 0.2 0;0.1 0.15 0.05;0 0.1 0.1];

% isto só resulta neste caso onde X e Y são 0,1,2
% se algum deles fosse, por exemplo, 14 já não daria
correlacao = 0;
for i = 1:length(A)
    for j = 1:length(A)
        correlacao = correlacao + (i-1) * (j-1) * A(i,j);
    end
end
correlacao

% forma aconselhável de fazer correlação é por os valores
% de X e Y em vetores
X = [0 1 2];
Y = [0 1 2];
correlacao = 0;
for i = 1:length(X)
    for j = 1:length(Y)
        correlacao = correlacao + X(i) * Y(j) * A(i,j);
    end
end
correlacao

% covariância
covariancia = correlacao - (mediaX * mediaY)

% coeficiente de correlação entre X e Y
coef = covariancia/(sqrt(VarX)*sqrt(VarX))

