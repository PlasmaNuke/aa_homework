class Map

    def initialize
        @map = []
    end

    def set(key, value)
        if @map.none? { |pair| pair[0] == key }
            @map << [key, value]
        else
            @map.each_with_index do |pair, i|
                @map[i] = [pair[0], value] if pair[0] == key
            end
        end
            
    end

    def get(key)
        @map.each { |pair| return pair[1] if pair[0] == key }
    end

    def delete(key)
        @map.each_with_index do |pair, i|
            @map = @map[0...i] + @map[i + 1..-1] if pair[0] == key
        end
    end

    def show
        @map
    end
end
