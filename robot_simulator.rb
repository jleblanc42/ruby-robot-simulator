class Robot

    attr_reader :bearing

    def initialize

    end

    def orient(direction)
        unless [:east, :west, :north, :south].include? direction
            raise ArgumentError.new "invalid argument: #{direction}" 
        end
        @bearing = direction
    end
    def turn_right
        orient(:east) 
     end
 end