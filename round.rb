class Round
  attr_reader :player

  def initialize(player)
    @player = player
  end

  def prompt_player
    question = Question.new
    puts "#{player.name}: " + question.generate_question
    answer = gets.chomp
    correct = question.check_response(answer)
    
    if correct
      return puts "#{player.name}: " + "YES! You are correct."
    else
      puts "#{player.name}: " + "Seriously? No!"
      player.remove_life
    end
  end
end