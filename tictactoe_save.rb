class Game

   def turn_verification(turn_typed)
     puts "Saisissez: une lettre, un nombre:"
     print "->"
     @turn_typed = gets.chomp
     alpha_found = /[a-z][A-Z].match(@turn_typed[1])
     num_found = /[0-9].match(@turn_typed[0])
     until (alpha_find != nil   and num_found != nil)
        puts "Saisissez à nouveau: une lettre, un nombre:"
        print "->"
        @turn_typed = gets.chomp
     end
     return @turn_typed
   end

end #end class

class Board

  attr_accessor :board_array

  def board_alim
    @board_array = Array.new
    @board_array = [["|_|_|_|"],["|_|y|_|"],["|_|_|_|"]]

#    lng = 3
#    i = 0
#    until i > lng  do
#      board_array << "."
#      i +=1
#    end
    #@board_array = board_array
    @line_dep = " _____"

     j = 0
#    7.times do
#      @board_array <<  " "
#    end
    puts @line_dep
    @board_array.each do |b|
        puts b

    end

#    @board_array.each do |a|
#      puts a
#    end
  end




end

class BoardCase



  def case(turn_typed)
    if @player_in = @player1
       @player_in = @player2
    else
       @player_in = @player1
    end
    if @line1[] != ""
      if player_in = @player1
        @line1[i] = "X"
      else
       @line1[i] = "o"
      end
    end
  end
end



class Players

  attr_accessor :player1, :state1, :player2, :state2

  def initialize(player1, state1, player2, state2)
     state1 = "TP"
     state2 = "TP"
     @player1 = player1
     @player2 = player2
     @state1  = state1
     @state2  = state2
   end


def players_entry(player1, state1, player2, state2)
   while player1 == nil
     puts "Joueur 1, saisissez votre pseudo:"
     player1 = gets.chomp
     @player1 = player1
   end
   while player2 == nil
     puts "Joueur 2, saisissez votre pseudo:"
     player2 = gets.chomp
     @player2 = player2
   end
   puts "Status TP = To play, PL = Played, Wo = Won"
   puts "Hey!! Here will begin the game with #{@player1} (status #{@state1}) and #{@player2} (status #{@state2})  !! ) "

   return @player1
   return @player2
 end

# def initialize



end


the_game  = Game.new
the_board = Board.new
the_player= Players.new(@player1, @state1, @player2, @state2)
puts the_player.players_entry(@player1, @state1, @player2, @state2)
the_party = Players.new("", "",  "", "")
the_board.board_alim

#turn_verification(@turn_typed)


#big_tree = Orange_tree.new(0, 0)
#puts big_tree.one_year_passes(5)
#turn_
#place_it((define_player))

#big_tree.compte_oranges
#1.times do
#  big_tree.pick_an_orange
#end
