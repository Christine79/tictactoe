class Game


    def initialize(playerTP, turn_typed)
       @playerTP = @player1

     end

#verification de la saisie du tour joué

   def turn_verification(turn_typed)
     puts "#{@playerTP}, saisissez: une lettre et  un nombre:"
     turn_typed = gets.chomp
     alpha_found = nil
     num_found = nil
     while (alpha_found == nil || num_found == nil)
        l = turn_typed[0]
        n = turn_typed[1]
        alpha_found = /[A-D]/.match(l)
        num_found = /[0-4]/.match(n)
        puts "#{@playerTP}, saisissez à nouveau: une lettre, un nombre:"
        print "->"
        turn_typed = gets.chomp
     end

     @turn_typed = turn_typed

     if @playerTP == @player1
        @playerTP = @player2
     else
        @playerTP = @player1
     end

     puts "here player 1 #{@player1}"
     puts "here player 2 #{@player2}"
     puts "here player TP #{@playerTP}"


     return @turn_typed
   end

end #end class

class Board

  attr_accessor :board_array

  def board_alim
    @board_array = Array.new
    @board_array = [["|","_","|","_","|","x","|"],["|","_","|","_","|","_","|"],["|","_","|","_","|","_","|"]]

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
        puts b[5]

    end

#    @board_array.each do |a|
#      puts a
#    end
  end




end

class BoardCase

  attr_accessor :turn_typed

  def initialize(turn_typed)
     @turn_typed = turn_typed
   end

#  affichage du tour joué

  def case_played(turn_typed)

    puts "player TP #{@playerTP}"
    if @playerTP = @player1
          @board_array[0][5] = "x"
    else
      @board_array[0][5] = "o"
    end

    puts @line_dep
    @board_array.each do |b|
        puts b
    end

    if @playerTP = @player1
       @playerTP = @player2
    else
       @playerTP = @player1
    end


  end
end



class Players

  attr_accessor :player1, :state1, :player2, :state2

  def initialize(player1, state1, player2, state2)
     state1 = "TP"
     state2 = "TP"
     @player1 = player1
     @playerTP = @player1
     @player2 = player2
     @state1  = state1
     @state2  = state2
   end


def players_entry(player1, state1, player2, state2)
   while player1 == nil
     puts "Joueur 1, saisissez votre pseudo:"
     player1 = gets.chomp
     @player1 = player1
     puts ""
   end
   while player2 == nil
     puts "Joueur 2, saisissez votre pseudo:"
     player2 = gets.chomp
     @player2 = player2
     puts ""
   end
   @playerTP = @player1
   puts "          ****** Status TP = To play, PL = Played, Wo = Won ******"
   puts ""
   puts ""
   puts ""

   puts "Hey!! Here will begin the game with #{@player1} (status #{@state1}) and #{@player2} (status #{@state2})  !! ) "
   puts ""

  end

# def initialize



end


the_game  = Game.new(@playerTP, @turn_typed)
the_board = Board.new
the_player= Players.new(@player1, @state1, @player2, @state2)
puts the_player.players_entry(@player1, @state1, @player2, @state2)
the_party = Players.new("", "",  "", "")
the_shoot = BoardCase.new(@turn_typed)
the_game.turn_verification(@turn_typed)
#the_shoot.case_played(@turn_typed)
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
