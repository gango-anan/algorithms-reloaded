class Node
    attr_accessor :data, :next
  
    def initialize(data)
      @data = data
    end
end

def shift_linked_list(head, k)
    return head if k.zero?

    current_node = head
    length = 0
    tail = nil
    new_tail = nil
    while current_node
        tail = current_node
        length += 1
        current_node = current_node.next
    end

    return head if (k.abs() % length).zero?

    index_to_shift_at = k < 0 ? k.abs() % length : length - (k % length)
    
    index = 0
    current_node = head

    while(index < index_to_shift_at)
        new_tail = current_node
        current_node = current_node.next
        index += 1
    end

    new_head = current_node
    new_tail.next = nil
    tail.next = head

    new_head
end


head = Node.new(0)
head.next = Node.new(1)
head.next.next = Node.new(2)
head.next.next.next = Node.new(3)
head.next.next.next.next = Node.new(4)
head.next.next.next.next.next = Node.new(5)

#p shift_linked_list(head, 2)
print("========================================================================================================")
p shift_linked_list(head, -2)

