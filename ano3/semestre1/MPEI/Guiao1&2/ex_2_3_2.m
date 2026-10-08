% S={"um","dois","três"} espaço de amostragem

% todos casos posíveis = 3 * 3 = 9
% ("um","um"), ("um","dois"), ("um","três")
% ("dois","um"), ("dois","dois"), ("dois","três")
% ("três","um"), ("três","dois"), ("três","três")

% sequências que incluem a palavra "dois":
% ("um","dois")
% ("dois","um")
% ("dois","dois")
% ("dois","três")
% ("três","dois")

% sequências que incluem a palavra "um" e "dois":
% ("um","dois")
% ("dois","um")

% Conclusão
% P["sequência inclui a palavra um" | "sequência inclui a palavra dois"] =
% P["sequência inclui a palavra um" & "sequência inclui a palavra dois"] /
% P["sequência inclui a palavra dois"] =
% (2/9)/(5/9) = 2/5