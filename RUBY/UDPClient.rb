require 'socket'

server_port = 12000
server_name = "localhost"

# Create a UDP socket
client_socket = UDPSocket.new

# Prompt the user to enter a lowercase sentence
print "Enter lowercase sentence: "
message = gets.chomp

# Send the message to the server
client_socket.send(message, 0, server_name, server_port)

# Receive the modified message from the server
modified_message, server_address = client_socket.recvfrom(2048)

# Print the modified message
puts "Modified message: #{modified_message}"

# Close the socket
client_socket.close
