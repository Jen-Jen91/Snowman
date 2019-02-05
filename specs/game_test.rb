require("minitest/autorun")
require("minitest/rg")
require_relative("../hidden_word.rb")
require_relative("../player.rb")
require_relative("../game.rb")

class GameTest < MiniTest::Test

  def setup()
    player = Player.new("Jen")
    frosty = HiddenWord.new("frosty")
    @game = Game.new(player, frosty)
  end

  def test_game_has_player()
    assert_equal("Jen", @game.player.name)
  end

  def test_game_has_hidden_word()
    word = @game.hidden_word
    assert_equal("frosty", word.hidden_word())
  end

  def test_guessed_letters_starts_empty()
    assert_equal(0, @game.guessed_letters.count())
  end

  def test_guess_letter()
    @game.guess("x")
    assert_equal(1, @game.guessed_letters.count())
  end

  def test_guess__no_duplicates()
    @game.guess("x")
    @game.guess("x")
    assert_equal(1, @game.guessed_letters.count())
  end

  def test_wrong_guess__loses_life()
    @game.guess("x")
    assert_equal(5, @game.player.lives())
  end

  def test_wrong_guess__false()
    @game.guess("o")
    assert_equal(6, @game.player.lives())
  end

  def test_reveal_word()
    @game.guess("o")
    assert_equal("**o***", @game.reveal_word())
  end

  def test_game_is_lost__false_at_start()
    refute(@game.is_lost?)
    #assert_nil(@game.is_lost?)
  end

  def test_game_is_lost__true_after_six_fails()
    @game.guess("x")
    @game.guess("z")
    @game.guess("b")
    @game.guess("c")
    @game.guess("d")
    refute(@game.is_lost?)
    @game.guess("i")
    assert_equal(0, @game.is_lost?)
  end

  def test_game_is_won__false_at_start
    refute(@game.is_won?)
  end

  def test_game_is_won__true
    @game.guess("f")
    @game.guess("r")
    @game.guess("o")
    @game.guess("s")
    @game.guess("t")
    refute(@game.is_won?)
    @game.guess("y")
    assert_equal("frosty", @game.is_won?)
  end

end
