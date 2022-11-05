class LinkedList
    attr_accessor :value, :next
    def initialize(value)
        @value = value
    end

    def self.sum_of_linked_lists(linkedListOne, linkedListTwo)
        current_node_one = linkedListOne
        current_node_two = linkedListTwo
        carry_over = 0
        head = LinkedList.new(0)
        current_node = head
        
        while(current_node_one || current_node_two || carry_over)
           if current_node_one && current_node_two
            value_one = current_node_one.value
            value_two = current_node_two.value
            current_node_one = current_node_one.next
            current_node_two = current_node_two.next
           elsif current_node_one.nil? && current_node_two
            value_one = 0
            value_two = current_node_two.value
            current_node_two = current_node_two.next
           elsif current_node_one && current_node_two.nil?
            value_one = current_node_one.value
            value_two = 0
            current_node_one = current_node_one.next
           elsif current_node_one.nil? && current_node_two.nil? && carry_over
            value_one = 0
            value_two = 0
           end
            total = value_one + value_two + carry_over
            sum = total % 10
            
            if current_node_one.nil? && current_node_two.nil? && total < 10
                carry_over = nil
            else
                carry_over = total/10
            end
            
            next_node = LinkedList.new(sum)
            current_node.next = next_node
            current_node = next_node
        end

        head.next
    end
end

linked_list_one = LinkedList.new(2)
node2 = LinkedList.new(4)
node3 = LinkedList.new(7)
node4 = LinkedList.new(1)

linked_list_one.next = node2
node2.next = node3
node3.next = node4

linked_list_two = LinkedList.new(9)
node5 = LinkedList.new(4)
node6 = LinkedList.new(5)

linked_list_two.next = node5
node5.next = node6

p LinkedList.sum_of_linked_lists(linked_list_one, linked_list_two)
