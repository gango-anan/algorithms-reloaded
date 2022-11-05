class Node
    attr_accessor :data, :next_node
  
    def initialize(data)
      @data = data
    end
end

def merge_linked_list(list_one, list_two)
    head = nil
    tail = nil
    current_node_one = list_one
    current_node_two = list_two
    if list_one.data < list_two.data
        head = list_one
        tail = list_one
        current_node_one = list_one.next_node
    else
        head = list_two
        tail = list_two
        current_node_two = list_two.next_node
    end

    while(current_node_one && current_node_two)
        if current_node_one.data < current_node_two.data
            tail.next_node = current_node_one
            current_node_one = current_node_one.next_node
        else
            tail.next_node = current_node_two
            current_node_two = current_node_two.next_node
        end
        tail = tail.next_node
    end

    tail.next_node = current_node_one if current_node_one
    tail.next_node = current_node_two if current_node_two

    head
end

head_list_one = Node.new(2)
node_2 = Node.new(6)
node_3 = Node.new(7)
node_4 = Node.new(8)

head_list_one.next_node = node_2
node_2.next_node = node_3
node_3.next_node = node_4


head_list_two = Node.new(1)
node_7 = Node.new(3)
node_8 = Node.new(4)
node_9 = Node.new(5)
node_10 = Node.new(9)
node_11 = Node.new(10)
head_list_two.next_node = node_7
node_7.next_node = node_8
node_8.next_node = node_9
node_9.next_node = node_10
node_10.next_node = node_11

p merge_linked_list(head_list_one, head_list_two)
