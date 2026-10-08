import socket
import signal
import sys

# Configurações do cliente
IP_ADDR = "203.12.65.114"
TCP_PORT = 5005

# Gerenciar interrupção
def signal_handler(sig, frame):
    print('\nEncerrando cliente.')
    sys.exit(0)

signal.signal(signal.SIGINT, signal_handler)

def main():
    print("Bem-vindo ao jogo 'Adivinha o Número'!")
    name = input("Qual é o teu nome: ").strip()
    sock = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
    try:
        sock.connect((IP_ADDR, TCP_PORT))
        sock.send(name.encode())
        print(f"Conectado ao servidor {IP_ADDR}:{TCP_PORT}.")

        while True:
            guess = input("Digita o teu palpite (ou 'sair' para sair): ").strip()
            if guess.lower() == "sair":
                print("Encerrando conexão com o servidor.")
                break
            sock.send(guess.encode())
            response = sock.recv(1024).decode()
            print(f"Resposta do servidor: {response}")

            if "Parabens" in response:
                print("Jogo encerrado. Tu ganhaste!")
                break
    except (socket.timeout, socket.error) as e:
        print(f"Erro de conexão: {e}. Finalizando cliente.")
    finally:
        sock.close()

if __name__ == '__main__':
    main()
