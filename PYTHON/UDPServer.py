from socket import *
serverName = 'localhost'
serverPort = 12000
serverSocket = socket(AF_INET, SOCK_DGRAM)
serverSocket.bind(('', serverPort))
print("The server is ready to receive")
while True:
    message, clientAddress = serverSocket.recvfrom(2048)
    modifiedmessage = message.decode().upper()
    serverSocket.sendto(modifiedmessage.encode(), clientAddress)