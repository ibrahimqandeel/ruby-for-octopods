class Node
  attr_reader :value, :next_node

  def initialize(value, next_node)
    @value = value
    @next_node = next_node
  end
end