class LinkedList

  def initialize
    @array = []
  end 

  #adding a new node to the end of the list
  def append(val)
    node = Node.new
    node.value = val
    @array << node 
    @array[-2].next_node = node unless @array.count == 1 
    end  

  #adding a new node to the start of the list
  def prepend(value)
    @array.unshift(Node.new(value,@array[0]))
  end 

  #siez returns the total number of nodes in the list
  def size
  	@array.count
  end 

  #head returns the first node in the list
  def head
  	@array[0]
  end 

  #tail returns the last node in the list
  def tail
  	@array[-1]
  end 

  #at(index) returns the node at the given index
  def at(index)
  	@array[index]
  end 

  #pop removes the last element from the list
  def pop
  	node = @array[-1]
  	@array.delete_at(-1) 
  	@array[-1].next_node = nil unless @array.count == 1 
	puts "J'ai supprimé le node : #{node.value}"
  end

  #contains? returns true if the passed in value is in the list and otherwise returns false.
  def contains?(val)
  	@array.each do |element|
  		return true if element.value == val
  		return false if element.value != val
  		until node.next_node == nil
  		end
  	end 
  end 

  #find returns the index of the node containing data, or nil if not found.
  def find(data)
    @array.each do |element|
      return @array.index(element) if element.value == data
    end 
    return nil 
  end 

  #to_s represent your LinkedList objects as strings, so you can print them out 
  #and preview them in the console. The format should be: ( data ) -> ( data ) -> ( data ) -> nil
  def display_exemple
    @array.each_with_index do |element, index|
    	if index < @array.count-1 
    		puts "(data : #{element.value}) --> #{element.next_node.value}"
    	else
    		puts "(data : #{element.value}) --> #{element.next_node}"
    	end
     end
    end

  end 

class Node
  attr_accessor :value, :next_node

  def initialize(value=nil, next_node=nil)
    @value = value
    @next_node = next_node
  end 
end 

my_tree = LinkedList.new

my_tree.append(1)
my_tree.append(2)
my_tree.append(9)
my_tree.prepend(4)
my_tree.prepend(6)

my_tree.display_exemple

my_tree.head     
p my_tree.tail
my_tree.at(2)
my_tree.pop
p my_tree.contains?(6)
p my_tree.find(2)
p my_tree.find(23)















