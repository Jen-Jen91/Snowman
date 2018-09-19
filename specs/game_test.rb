require("minitest/autorun")
require("minitest/rg")
require_relative("../hidden_word.rb")
require_relative("../player.rb")
require_relative("../game.rb")

class GameTest < MiniTest::Test

  def setup()
    player1 = Player.new("Jen")

    frosty = HiddenWord.new("frosty the snowman")

    @game = Game.new(player1, frosty)
  end

  def test_game_has_player()
    assert_equal("Jen", @game.player.name)
  end

  def test_game_has_hidden_word()
    assert_equal("frosty the snowman", @game.hidden_word.hidden_word())
  end

  def test_guessed_letters_starts_empty()
    assert_equal(0, @game.guessed_letters.count())
  end

  def test_add_guessed_letter()
    @game.add_guessed_letter("x")
    assert_equal(1, @game.guessed_letters.count())
  end

  def test_add_guessed_letter__no_duplicates()
    @game.add_guessed_letter("x")
    @game.add_guessed_letter("x")
    assert_equal(1, @game.guessed_letters.count())
  end

  def test_reveal_word()
    @game.add_guessed_letter("o")
    assert_equal("**o*** *** **o****", @game.reveal_word())
  end



end
