class Stack
    attr_reader :stack

    def initialize
        @stack = [8, 2, 3, 22, 5, 8, 7, 80, 1, 17]
    end

    def count
        @stack.count
    end


    def push(element)
        useful_stack = stack.reverse
        end_number = @stack.count
        useful_stack.each.with_index do |num, index|
            index = end_number
            while index >= 0 
            @stack[index] = num
            require 'pry' ; binding.pry
            index -= 2
            end
        end
        @stack[0] = element
        @stack
    end

end

stack1 = Stack.new

p stack1.push(24)