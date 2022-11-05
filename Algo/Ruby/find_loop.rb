class LinkedList
    attr_accessor :value, :next
    def initialize(value)
        @value =  value
    end

    def self.findLoop(head)
        current_node = head
        node_hash = {}
        while current_node
            key = current_node.value
            if(node_hash[key])
                return current_node
            end
            node_hash[key] = current_node
            current_node = current_node.next
        end
        nil
    end

    def self.findLoop_(head)
        nil
    end
end

node1 = LinkedList.new(0)
node2 = LinkedList.new(1)
node3 = LinkedList.new(2)
node4 = LinkedList.new(3)
node5 = LinkedList.new(4)
node6 = LinkedList.new(5)
node7 = LinkedList.new(6)
node8 = LinkedList.new(7)
node9 = LinkedList.new(8)
node10 = LinkedList.new(9)

node1.next = node2
node2.next = node3
node3.next = node4
node4.next = node5
node5.next = node6
node6.next = node7
node7.next = node8
node8.next = node9
node9.next = node4

p LinkedList.findLoop(node1).value
