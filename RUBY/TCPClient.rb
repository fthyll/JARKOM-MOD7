require 'socket'

server_port = 12000
server_address = 'localhost'

# Create a TCP socket
client_socket = TCPSocket.new(server_address, server_port)

# Get the message from user input
puts "Enter a lowercase sentence:"
sentence = gets.chomp

# Send the message to the server
client_socket.puts(sentence)

# Receive the modified message from the server
modified_sentence = client_socket.gets

# Print the modified message
puts "From Server: #{modified_sentence}"

# Close the socket
client_socket.close
