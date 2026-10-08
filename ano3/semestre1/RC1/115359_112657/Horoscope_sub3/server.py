import socket
import threading
import random
import signal
import sys

# Configurações do servidor
IP_ADDR = "0.0.0.0"
TCP_PORT = 5005
MIN_NUMBER = 1
MAX_NUMBER = 100

# Para armazenar tentativas dos clientes
client_attempts = {}

# Gerenciar interrupção
def signal_handler(sig, frame):
    print('\nEncerrando servidor.')
    sys.exit(0)

signal.signal(signal.SIGINT, signal_handler)

def handle_client_connection(client_socket, address):
    client_id = f"{address[0]}:{address[1]}"
    print(f"Conexão aceita de {client_id}")
    
    # Inicia o jogo
    target_number = random.randint(MIN_NUMBER, MAX_NUMBER)
    print(f"[{client_id}] Número alvo gerado: {target_number}")
    client_attempts[client_id] = {"name": None, "tries": 0}
    
    try:
        # Primeiro recebemos o nome do jogador
        name = client_socket.recv(1024).decode().strip()
        client_attempts[client_id]["name"] = name
        print(f"[{client_id}] Nome do jogador: {name}")

        # Loop de palpites
        while True:
            guess_data = client_socket.recv(1024).decode().strip()
            if not guess_data:
                print(f"[{client_id}] Conexão encerrada pelo cliente.")
                break
            
            try:
                guess = int(guess_data)
                client_attempts[client_id]["tries"] += 1
                difference = target_number - guess
                
                if difference > 0:  # Palpite abaixo do número
                    if difference <= 10:
                        client_socket.send(b"Um pouco abaixo!")
                    else:
                        client_socket.send(b"Muito baixo!")
                elif difference < 0:  # Palpite acima do número
                    if abs(difference) <= 10:
                        client_socket.send(b"Um pouco acima!")
                    else:
                        client_socket.send(b"Muito alto!")
                else:  # Palpite correto
                    client_socket.send(b"Parabens, voce acertou!")
                    print(f"[{client_id}] Jogador {name} acertou em {client_attempts[client_id]['tries']} tentativas!")
                    break
            except ValueError:
                client_socket.send(b"Por favor, envie um numero valido.")
    except (socket.timeout, socket.error) as e:
        print(f"Erro no cliente {client_id}: {e}")
    finally:
        client_socket.close()

def main():
    print(f"Servidor ouvindo em {IP_ADDR}:{TCP_PORT}")
    server = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
    server.bind((IP_ADDR, TCP_PORT))
    server.listen(5)  # Tamanho máximo da fila de conexões
    try:
        while True:
            client_sock, address = server.accept()
            threading.Thread(target=handle_client_connection, args=(client_sock, address), daemon=True).start()
    except KeyboardInterrupt:
        print("\nServidor finalizado.")
    finally:
        server.close()

if __name__ == '__main__':
    main()
