v1= [4:2:100];

v2= [5:-1:-5];

v3= 0:1/99:1;
% é usado 99 porque assim fuca com 100 elementos
% tbm podesse usar limspace(0,1,100)

B= rand(20,30);
A= B(10:15,9:12);

x= -pi:pi/150:pi;
% é importante a incrementação ser alta para
% que o desenho do grafo seja apropriado

plot(x, sin(4*pi*x));
