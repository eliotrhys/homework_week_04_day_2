require('minitest/autorun')
require_relative('../models/game.rb')
require("minitest/rg")

class TestGame < MiniTest::Test

  def setup
    @game1 = Game.new("rock", "rock")
    @game2 = Game.new("scissors", "rock")
    @game3 = Game.new("rock", "paper")
  end

  def test_play
    result = @game1.play
    assert_equal("It's a draw!", result)
  end

  def test_play_2
    result = @game2.play
    assert_equal("Player 2 wins!", result)
  end

  def test_play_3
    result = @game3.play
    assert_equal("Player 2 wins!", result)
  end

end
