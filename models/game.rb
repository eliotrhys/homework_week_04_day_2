class Game

  attr_accessor :player1, :player2

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
  end

  def play()
    case
      #DRAWS
    when @player1 == "rock" && @player2 == "rock"
      p "It's a draw!"
    when @player1 == "paper" && @player2 == "paper"
      p "It's a draw!"
    when @player1 == "scissors" && @player2 == "scissors"
      p "It's a draw!"

      #PLAYER 1 WINS / PLAYER 2 LOSES
    when @player1 == "scissors" && @player2 == "paper"
      p "Player 1 wins!"
    when @player1 == "rock" && @player2 == "scissors"
      p "Player 1 wins!"
    when @player1 == "paper" && @player2 == "rock"
      p "Player 1 wins!"

      #PLAYER 1 LOSES / PLAYER 2 WINS
    when @player1 == "scissors" && @player2 == "rock"
      p "Player 2 wins!"
    when @player1 == "rock" && @player2 == "paper"
      p "Player 2 wins!"
    when @player1 == "paper" && @player2 == "scissors"
      p "Player 2 wins!"

      #CONTINGENCY
    else
      p "Uh mate you fucked it up lol try again"

    end
  end

end
