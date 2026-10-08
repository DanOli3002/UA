
p = logspace (-3,log10(1/2),100);

aviao2 = p.^2;
aviao4 = nchoosek(4,3)*p.^3.*(1-p).^(4-3) + p.^4;

loglog(p,aviao2,p,aviao4)
grid on
