class Player
  attr_reader :name
  attr_accessor :lives

  def initialize(name)
    @name = name
    @lives = 3
  end

  def incorrect
    puts "Wrong!"
    @lives -= 1
  end

  def lose?
    @lives == 0
  end

end