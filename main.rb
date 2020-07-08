class Node
  attr_reader :value, :next_node

  def initialize(value, next_node)
    @value = value
    @next_node = next_node
  end

end

class Stack
  def initialize
    @head = nil
    @size = 0
  end

  def push(value)
    @head = Node.new(value, @head)
    @size += 1
  end

  def pop
    if is_empty then
      puts "Stack is empty"
    else
      @size -= 1
      _value = @head.value
      @head = @head.next_node
      _value
    end
  end

  def get_max
    _element = @head
    _max = 0
    while !_element.nil?
      if _max < _element.value
        _max = _element.value
      end
      _element = _element.next_node
    end
    _max
  end

  def is_empty
    @size < 1
  end

  def stack_size
    @size
  end
end
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