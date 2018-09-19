require("minitest/autorun")
require("minitest/rg")
require_relative("../player.rb")

class PlayerTest < MiniTest::Test

  def setup()
    @player1 = Player.new("John")
  end


  def test_player_has_name()
    assert_equal("John", @player1.name())
  end


  def test_player_lives()
    assert_equal(6, @player1.lives())
  end


end
