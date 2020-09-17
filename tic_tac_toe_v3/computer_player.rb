require './human_player.rb'

class ComputerPlayer
    attr_reader :mark
    def initialize(mark_value)
        @mark = mark_value
    end

    def get_position(legal_positions)
        len = legal_positions.size
        pos = legal_positions[rand(0...len)]
        puts "Computer #{@mark} chose position #{pos}"
        return pos
    end
end