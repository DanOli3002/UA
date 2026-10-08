% X\Y   -1    0    1
%  -1    1/8  1/8  1/24
%   0    1/8  1/4  1/8
%   1    1/24 1/8  1/24

A = [1/8 1/8 1/24;1/8 1/4 1/8;1/24 1/8 1/24];
X = [-1 0 1];
Y = [-1 0 1];

pY = sum(A,1)';
pX = sum(A,2);

pXY = sum(pX .*pY);
diferenca = sum(X - Y);

if diferenca ~= pXY 
    fprintf("As variáveis não são independentes.")
end
if diferenca == pXY
    fprintf("As variáveis são independentes.")
end

