require './stack'
loop_size = gets.to_i
user_stack = Stack.new
output = Array.new
while loop_size > 0
  input_values = gets.chomp.split().map { |e| e.to_i }
  loop_size -= 1

  if input_values[0] == 1
    user_stack.push(input_values[1])
  elsif input_values[0] == 2
    user_stack.pop
  elsif input_values[0] == 3
    output << user_stack.get_max
  else
    puts "Unknown Operation"
    loop_size += 1
  end
end
puts output