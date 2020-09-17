class HumanPlayer
    attr_reader :mark
    def initialize(mark_value)
        @mark = mark_value
    end

    def get_position(legal_positions)
        print "Player #{self.mark}, enter two numbers representing a position in the format `row col`: "
        input = gets.chomp.split
        raise "Invalid position, must be in format `row col`" if input.size != 2
        row, col = input
        pos = [row.to_i, col.to_i]
        while !legal_positions.include?(pos)
            print "#{pos} is not a legal position, try again:  "
            input = gets.chomp.split
            row, col = input
            pos = [row.to_i, col.to_i]
        end
        return pos
    end
end