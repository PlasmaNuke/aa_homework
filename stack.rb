class Stack
    def initialize
      @stack = []
    end
  
    def push(el)
      @stack << el
    end
  
    def pop
        el = @stack[-1]
        @stack = @stack[0...-1]
        el
    end
  
    def peek
      @stack[0]
    end
  end