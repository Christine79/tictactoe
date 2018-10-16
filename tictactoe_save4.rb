class Game

    attr_accessor :player1, :player2, :playerTP,  :turn_typed

#verification de la saisie du tour joué

   def turn_verification(turn_typed)
     alpha_found = nil
     num_found = nil
     while (alpha_found == nil || num_found == nil)
       puts "#{@playerTP}, saisissez une lettre, majuscule (A,B,ou C) , un nombre (1, 2 ou 3)"
       print "->"
       turn_typed = gets.chomp

        l = turn_typed[0]
        n = turn_typed[1]
        alpha_found = /[A-D]/.match(l)
        num_found = /[0-4]/.match(n)
     end


     @turn_typed = turn_typed
     puts "turn_typed" + turn_typed
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

  attr_accessor :board_array, :line_dep


      def initialize(board_array, line_dep)

        @board_array = board_array
        @line_dep = line_dep
       end

  def board_alim
    board_array = Array.new
    board_array = [["|_|_|_|"],["|_|_|_|"],["|_|_|_|"]]
    @board_array = board_array

    line_dep = " _____"
    @line_dep = line_dep

     j = 0

    puts line_dep
    board_array.each do |b|
        puts b

    end

  end




end

class BoardCase

  attr_accessor :turn_typed, :board_array, :playerTP, :line_dep, :player1, :player2


#  affichage du tour joué

  def case_played(board_case, board_array, turn_typed)

    puts "player TP  #{@playerTP}"
    puts "player 1   #{@player1}"
    puts "player 2   #{@player2}"

    @playerTP = "kiki"
    if @playerTP == "kiki"
      puts "e passe"
      if @turn_typed == "A1"
         @board_array == [["|x|_|_|"],["|_|_|_|"],["|_|_|_|"]]
       else
         if @turn_typed == "A2"
            @board_array == [["|_|x|_|"],["|_|_|_|"],["|_|_|_|"]]
         else
            if @turn_typed == "A3"
              puts "je passe A3"
               @board_array == [["|_|_|x|"],["|_|_|_|"],["|_|_|_|"]]
            else
               if @turn_typed == "B1"
                  @board_array == [["|_|_|_|"],["|x|_|_|"],["|_|_|_|"]]
                else
                  if @turn_typed == "B1"
                     @board_array == [["|_|_|_|"],["|_|x|_|"],["|_|_|_|"]]
                  else
                     if @turn_typed == "B1"
                        @board_array == [["|_|_|_|"],["|_|_|x|"],["|_|_|_|"]]
                     else
                        if @turn_typed == "C1"
                           @board_array == [["|_|_|_|"],["|_|_|_|"],["|x|_|_|"]]
                        else
                           if @turn_typed == "C2"
                              @board_array == [["|_|_|_|"],["|_|_|_|"],["|_|x|_|"]]
                           else
                              if @turn_typed == "C3"
                                 @board_array == [["|_|_|_|"],["|_|_|_|"],["|_|_|x|"]]
                               end
end
end
end
end
end
end
end
end
    else
      if @turn_typed == "A1"
         @board_array == [["|o|_|_|"],["|_|_|_|"],["|_|_|_|"]]
       else
         if @turn_typed == "A2"
            @board_array == [["|_|o|_|"],["|_|_|_|"],["|_|_|_|"]]
         else
            if @turn_typed == "A3"
               @board_array == [["|_|_|o|"],["|_|_|_|"],["|_|_|_|"]]
            else
               if @turn_typed == "B1"
                  @board_array == [["|_|_|_|"],["|o|_|_|"],["|_|_|_|"]]
                else
                  if @turn_typed == "B1"
                     @board_array == [["|_|_|_|"],["|_|o|_|"],["|_|_|_|"]]
                  else
                     if @turn_typed == "B1"
                        @board_array == [["|_|_|_|"],["|_|_|o|"],["|_|_|_|"]]
                     else
                        if @turn_typed == "C1"
                           @board_array == [["|_|_|_|"],["|_|_|_|"],["|o|_|_|"]]
                        else
                           if @turn_typed == "C2"
                              @board_array == [["|_|_|_|"],["|_|_|_|"],["|_|o|_|"]]
                           else
                              if @turn_typed == "C3"
                                 @board_array == [["|_|_|_|"],["|_|_|_|"],["|_|_|o"]]
                               end
end
end
end
end
end
end
end
end
    end
  end

#    @board_array = board_array
    puts @line_dep
    @line_dep = " _____"

#      @board_array.each do |b|
#        puts b
#    end


    if @playerTP = @player1
       @playerTP = @player2
    else
       @playerTP = @player1
    end
puts
#    return @board_array
end



class Players

  attr_accessor :playerTP, :player1, :state1, :player2, :state2

  def initialize(playerTP, player1, state1, player2, state2)
     state1 = "TP"
     state2 = "TP"
     @player1 = player1
     @player2 = player2
     @state1  = state1
     @state2  = state2
     @playerTP = playerTP
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

#   return @player1
   return @player2
 end

# def initialize



end

the_game  = Game.new
the_board = Board.new(@board_array,@line_dep)
the_player= Players.new(@playeTP, @player1, @state1, @player2, @state2)
puts the_player.players_entry(@player1, @state1, @player2, @state2)
the_party = Players.new("", "",  "", "", "")
the_shoot = BoardCase.new
the_game.turn_verification(@turn_typed)
the_shoot.case_played(@board_case, @board_array, @turn_typed)
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
