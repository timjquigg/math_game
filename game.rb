
class Game
  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
  end

  def play_game
    current_player = @player1
    other_player = @player2
    until @player1.lives == 0 || @player2.lives == 0 do
      current_round = Round.new(current_player)
      current_round.prompt_player
      if current_player.lives == 0
        puts "#{other_player.name} wins with a score of #{other_player.lives} / 3"
        puts "---- GAME OVER ----"
        puts "Good bye!"
        return
      else
        puts "#{@player1.name}: #{@player1.lives}/3 vs #{@player2.name}: #{@player2.lives}/3"
        puts "---- NEW ROUND ----"
      end
      current_player, other_player = other_player, current_player
    end

  end

end
