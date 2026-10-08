%% Ex2 - filtro de Bloom

% a)

% 300 palavras
% fp = 3% = 0.03
% 1 funçao dispersao
% tamanho ???
m = 300;
fp = 0.03;
k = 1;
N = 1;  % tamanho
% formula para prob_fp = (1 - exp((-k * m)/N)^k
while true
    prob_fp = (1 - exp((-k * m)/N)^k);
    if abs(prob_fp - fp) < 0.00001
        break
    end
    N = N+1;
end
N

% b)
alfabeto = ['A':'Z' 'a':'z'];
i_min = 5;
i_max = 20;
wordArr1 = GenerateString(m, i_min, i_max, char_vec)
wordArr2 = GenerateString(3000, i_min, i_max, char_vec);
B = BloomInit(N,k);

for i=1:length(wordArr1)
    word = wordArr1{i};
    B = BloomInsert(B,word,k);
end

fp = 0;
for i=1:length(wordArr2)
    word = wordArr2{i};
    if BloomVerify(B,word,k) == 1
        fp = fp +1;
    end
end
sprintf("False Positives %d\n", fp);
fp/3000