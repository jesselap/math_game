class Game
  attr_accessor :player1, :player2, :players
  
  def initialize
    @player1 = Player.new("Player 1")
    @player2 = Player.new("Player 2")
    @players = [@player1, @player2]
    puts "Let's begin!"
  end

  def score
    @players.each{|player| puts "#{player.name}: #{player.lives}/3"}
  end

  def winner
    winner = @players.find{|player| !player.lose?}
    puts "#{winner.name} wins with a score of #{winner.lives}/3"
  end

  def game_over?
    @players.select{|player| player.lose?}.count > 0
  end

  def play
    until (game_over?) do
      question = Question.new(@players)
      question
      score
    end
    winner
  end

end

