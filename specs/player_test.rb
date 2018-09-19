require("minitest/autorun")
require("minitest/rg")
require_relative("../player.rb")

class PlayerTest < MiniTest::Test

  def setup
    @player1 = Player.new("John")
  end

  def test_player_has_name
    assert_equal("John", @player1.name)
  end




















end
