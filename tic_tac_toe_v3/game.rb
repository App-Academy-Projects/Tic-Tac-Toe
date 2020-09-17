require "./board.rb"
require "./human_player.rb"
require "./computer_player.rb"
class Game
    def initialize(board_size, players_marks_hash)
        @players = []
        players_marks_hash.each do |mark, type|
            if type == false
                @players << HumanPlayer.new(mark)
            else
                @players << ComputerPlayer.new(mark)
            end
        end
        @current_player = @players[0]
        @board = Board.new(board_size)
    end

    def switch_turn
        @current_player = @players.rotate![0]
    end

    def play
        while @board.empty_positions?
            @board.print_grid
            legal_positions = @board.legal_positions
            position = @current_player.get_position(legal_positions)
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