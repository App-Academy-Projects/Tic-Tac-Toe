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
        return position[0] < ROWS && position[1] < COLS
    end

    def empty?(position)
        row = position[0]
        col = position[1]
        return @grid[row][col] == '_'
    end
end