require "byebug"

class GraphNode

    attr_reader :value, :neighbors

    def initialize(value)
        @value = value
        @neighbors = []
    end

    def add_neighbor(node)
        if !@neighbors.include?(node)
            @neighbors << node
            true
        else
            false
        end
    end

    def bfs (starting_node, target_value)
        queue = [starting_node]
        visited = []
        debugger

        until queue.empty?
            node = queue.shift
            return node if node.value == target_value
            unvisited_nodes = node.neighbors.select { |neighbor| !visited.include?(neighbor) }
            visited += unvisited_nodes
            queue += unvisited_nodes
        end
    end
end