class Queue

    def initialize
        @queue = []
    end

    def enqueue(el)
        @queue.push(el)
    end

    def dequeue
        el = @queue[0]
        @queue = @queue[1..-1]
        el
    end

    def peek
        @queue[0]
    end