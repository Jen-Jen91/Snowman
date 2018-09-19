require("minitest/autorun")
require("minitest/rg")
require_relative("../hidden_word.rb")
require_relative("../player.rb")
require_relative("../game.rb")

class GameTest < MiniTest::Test

  def setup()

    @player1 = Player.new("John")

    @frosty = HiddenWord.new("frosty the snowman")

    @game1 = Game.new(@player1, @frosty)
  end

  def test_game_has_player()
    assert_equal("John", @game1.player.name)
  end

  def test_gets_hidden_word()
    assert_equal("frosty the snowman", @game1.get_word)
  end

  def test_game_has_hidden_word()
    @game1.get_word()
    assert_equal("frosty the snowman", @game1.hidden_word())
  end

  def test_has_empty_guessed_letters_array()
    assert_equal(0, @game1.guessed_letters.count)
  end

  def test_gets_guess()
    assert_equal("o", @game1.get_letter(@frosty))
  end

  def test_guess_added_to_guessed_letters
    @game1.get_letter(@frosty)
    assert_equal(1, @game1.guessed_letters.count)
  end







end
