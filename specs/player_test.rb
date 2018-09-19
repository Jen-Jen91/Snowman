require("minitest/autorun")
require("minitest/rg")
require_relative("../player.rb")

class PlayerTest < MiniTest::Test

  def setup()
    @player1 = Player.new("Jen")
  end


  def test_player_has_name()
    assert_equal("Jen", @player1.name())
  end


  def test_player_lives_start_at_6()
    assert_equal(6, @player1.lives())
  end


  def test_player_loses_life()
    @player1.lose_life()
    assert_equal(5, @player1.lives())
  end



end
