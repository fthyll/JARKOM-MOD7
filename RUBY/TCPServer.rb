require 'socket'

server_port = 12000

# Create a TCP server socket
server_socket = TCPServer.new(server_port)

puts "The server is ready to receive"

loop do
  # Wait for a client to connect
  client_socket = server_socket.accept

  # Read the client's message
  message = client_socket.gets.chomp

  # Modify the message
  modified_message = message.upcase

  # Send the modified message back to the client
  client_socket.puts(modified_message)

  # Close the client socket
  client_socket.close
end
