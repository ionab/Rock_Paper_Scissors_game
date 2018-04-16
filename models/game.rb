class Game

  def self.play(player1, player2)
    if player1 == player2
      return "draw"
    elsif (player1 == "rock" && player2 == "scissors") || (player1 == "scissors" && player2 == "rock")
      return "rock wins!"
    elsif (player1 == "scissors" && player2 == "paper") || (player1 == "paper" && player2 == "scissors")
      return "scissors wins!"
    elsif (player1 == "paper" && player2 == "rock") || (player1 == "rock" && player2 == "paper")
      return "paper wins!"
    end
  end

end
