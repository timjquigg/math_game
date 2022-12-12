class Player
  attr_reader :name
  attr_reader :lives

  def initialize(name)
    @name = name
    @lives = 3
  end

  def remove_life
    @lives -= 1
  end

  def to_s
    return "#{name}: #{lives}/3"
  end

end
