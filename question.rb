class Question

  def initialize
    @number1 = rand(1..20)
    @number2 = rand(1..20)
    @answer = @number1 + @number2
  end

  def generate_question
    question = "What does #{number1} + #{number2} equal?"
  end

  def check_response(response)
    return response.to_i == answer
  end

  private

  attr_reader :answer, :number1, :number2
end

