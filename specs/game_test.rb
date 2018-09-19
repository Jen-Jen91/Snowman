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

  def test_game_has_player()
    assert_equal("John", @game1.player.name)
  end

  def test_game_has_hidden_word()
    assert_equal("Frosty the Snowman", @game1.hidden_word.word())
  end

  def test_has_empty_guessed_letters_array()
    assert_equal(0, @game1.guessed_letters.count)
  end

  def test_gets_guess()
    assert_equal("o", @game1.get_input)
  end















  # def test_guessed_letters_go_to_array()
  #
  # end




end
