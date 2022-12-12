require('./player.rb')
require('./question.rb')
require('./round.rb')

class Game

  attr_reader :player1, :player2

  def setup_game

    puts "Welcome to the super fun Math Game!"

    puts "Player 1, please enter your name:"
    player1_name = gets.chomp
    @player1 = Player.new(player1_name)

    puts "Player 2, please enter your name:"
    player2_name = gets.chomp
    @player2 = Player.new(player2_name)

  end

  def play_game
    current_player = player1
    other_player = player2
    until player1.lives == 0 || player2.lives == 0 do
      current_round = Round.new(current_player)
      current_round.prompt_player
      if current_player.lives == 0
        puts "#{other_player.name} wins with a score of #{other_player.lives} / 3"
        puts "---- GAME OVER ----"
        puts "Good bye!"
        return
      else
        puts "#{player1.to_s} vs #{player2.to_s}"
        puts "---- NEW ROUND ----"
      end
      current_player, other_player = other_player, current_player
    end

  end

end





game = Game.new
game.setup_game
game.play_game