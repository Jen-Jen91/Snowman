require("minitest/autorun")
require("minitest/rg")
require_relative("../hidden_word.rb")
require_relative("../player.rb")
require_relative("../game.rb")

class GameTest < MiniTest::Test

  def setup()

    @player1 = Player.new("John")

    @frosty = HiddenWord.new("Frosty the Snowman")

    @game1 = Game.new(@player1, @frosty)
  end

  def test_game_has_player
    assert_equal("John", @game1.player.name)
  end


end
