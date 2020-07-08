require './node'
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