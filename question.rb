class Question

  def initialize(players)
    @active_player = players.first
    @num1 = 1 + rand(20)
    @num2 = 1 + rand(20)
    @answer = @num1 + @num2
    puts "#{@active_player.name}: what does #{@num1} plus #{@num2} equal?"
    response = gets.chomp.to_i

    if response != @answer 
      players.first.incorrect
    else 
      puts "You are correct!"
    end
    players.reverse!
  end

end

