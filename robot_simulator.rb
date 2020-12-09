class Robot

    attr_reader :bearing

    # def initialize

    # end
    # def bearing
    #      @bearing
    # end
    def orient(direction)
        unless [:east, :west, :north, :south].include? direction
            raise ArgumentError.new "invalid argument: #{direction}" 
        end
        @bearing = direction
    end
    def turn_right
        if (bearing==:north)
            orient(:east) 
        elsif (bearing==:east)
            orient (:south)
        elsif(bearing==:south)
            orient(:west)
        elsif(bearing==:west)
            orient(:north)
        end
     end
     
 end