require "./board.rb"
require "./human_player.rb"
class Game
    def initialize(board_size, *players_marks)
        @players = []
        players_marks.each { |mark| @players << HumanPlayer.new(mark) }
        @current_player = @players[0]
        @board = Board.new(board_size)
    end

    def switch_turn
        @current_player = @players.rotate![0]
    end

    def play
        while @board.empty_positions?
            @board.print_grid
            position = @current_player.get_position
            curr_mark = @current_player.mark
            @board.place_mark(position, curr_mark)
            if @board.win?(curr_mark)
                return "Player #{curr_mark} WINS!!!"
            end
            self.switch_turn
        end
        puts "DRAW :/"
    end
end