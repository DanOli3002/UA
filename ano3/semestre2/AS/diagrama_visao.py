from graphviz import Digraph

# Criar um diagrama de atividades
dot = Digraph('Diagrama de Atividades - Pet-O-Tel', format='png')

# Configuração inicial
dot.attr(rankdir='TB', size='10')

# Estados/Inícios e Fim
dot.node('Start', '🔵 Início', shape='ellipse', style='filled', fillcolor='lightblue')
dot.node('End', '🔴 Fim', shape='ellipse', style='filled', fillcolor='red')

# Etapas do processo
dot.node('A', '📲 Acessa a plataforma (App/Site)', shape='box', style='filled', fillcolor='lightgrey')
dot.node('B', '🔍 Pesquisa por serviços disponíveis', shape='box', style='filled', fillcolor='lightgrey')
dot.node('C', '📑 Consulta perfis e avaliações', shape='box', style='filled', fillcolor='lightgrey')
dot.node('D', '✅ Seleciona serviço e faz reserva', shape='box', style='filled', fillcolor='lightgrey')
dot.node('E', '📆 Sistema verifica disponibilidade', shape='diamond', style='filled', fillcolor='orange')
dot.node('F', '👍 Prestador aceita automaticamente?', shape='diamond', style='filled', fillcolor='orange')
dot.node('G', '📩 Notificação enviada ao cliente e prestador', shape='box', style='filled', fillcolor='lightgrey')
dot.node('H', '💳 Pagamento processado', shape='box', style='filled', fillcolor='lightgrey')
dot.node('I', '🐾 Prestador realiza serviço', shape='box', style='filled', fillcolor='lightgrey')
dot.node('J', '🌟 Cliente avalia serviço', shape='box', style='filled', fillcolor='lightgrey')

# Ligações
dot.edge('Start', 'A')
dot.edge('A', 'B')
dot.edge('B', 'C')
dot.edge('C', 'D')
dot.edge('D', 'E')
dot.edge('E', 'F', label="Disponível?")
dot.edge('F', 'G', label="Sim", color="green")
dot.edge('F', 'E', label="Não (Aguarda confirmação)", color="red", style="dashed")
dot.edge('G', 'H')
dot.edge('H', 'I')
dot.edge('I', 'J')
dot.edge('J', 'End')

# Renderizar e salvar o diagrama
diagram_path = "/mnt/data/diagrama_petotel.png"
dot.render(diagram_path, format="png", cleanup=True)

# Retornar o caminho do arquivo gerado
diagram_path
