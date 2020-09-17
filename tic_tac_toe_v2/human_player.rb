class HumanPlayer
    attr_reader :mark
    def initialize(mark_value)
        @mark = mark_value
    end

    def get_position
        print "Player #{self.mark}, enter two numbers representing a position in the format `row col`: "
        input = gets.chomp.split
        raise "Invalid positionm must be in format `row col`" if input.size != 2
        row, col = input
        return [row.to_i, col.to_i]
    end
end