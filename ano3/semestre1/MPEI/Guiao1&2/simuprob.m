function [probSimulacao] = simuprob(prob,NLan,Ncaras,Nexpe)
% simuprob- estimar a probabilidade por simulação
%   Detailed explanation goes here
lancamentos = rand(NLan,Nexpe) > prob;
sucessos= sum(lancamentos)==Ncaras;
probSimulacao= sum(sucessos)/Nexpe;
end