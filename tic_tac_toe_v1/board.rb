class Board
    ROWS = 3
    COLS = 3
    SIZE = ROWS * COLS
    def initialize
        @grid = [
                  ['_', '_', '_'],
                  ['_', '_', '_'],
                  ['_', '_', '_']
                ]
    end

    def valid?(position)
        row = position[0]
        col = position[1]
        return (row < ROWS && col < COLS) && (row >= 0 && col >= 0)
    end

    def empty?(position)
        row = position[0]
        col = position[1]
        return @grid[row][col] == '_'
    end

    def place_mark(position, mark)
        row = position[0]
        col = position[1]
        raise "Not valid Position" if !valid?(position)
        raise "Already marked! try another place" if !empty?(position)
        @grid[row][col] = mark 
    end

    def print_grid
        @grid.each do |row|
            print "     "
            row.each { |el| print "| #{el} " }
            puts
            puts "   ----------"
        end
    end

    def win_row?(mark)
        @grid.any? { |row| row.all? { |el| el == mark } }
    end
end