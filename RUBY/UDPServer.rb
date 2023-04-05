require 'socket'

server_port = 12000

# Create a UDP socket
server_socket = UDPSocket.new

# Bind the socket to the local host and port
server_socket.bind("localhost", server_port)

puts "The server is ready to receive"

loop do
  # Receive the message from the client
  message, client_address = server_socket.recvfrom(2048)

  # Modify the message to uppercase
  modified_message = message.upcase

  # Send the modified message back to the client
  server_socket.send(modified_message, 0, client_address[3], client_address[1])
end
