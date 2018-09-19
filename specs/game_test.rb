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
    assert_equal("**o***", @game.reveal_word())
  end


  def test_game_is_lost__false_at_start()
    refute(@game.is_lost?)
    #assert_nil(@game.is_lost?)
  end


  def test_game_is_lost__true_after_six_fails()
    @game.add_guessed_letter("x")
    @game.wrong_guess("x")
    @game.add_guessed_letter("z")
    @game.wrong_guess("z")
    @game.add_guessed_letter("b")
    @game.wrong_guess("b")
    @game.add_guessed_letter("c")
    @game.wrong_guess("c")
    @game.add_guessed_letter("d")
    @game.wrong_guess("d")
    refute(@game.is_lost?)
    @game.add_guessed_letter("i")
    @game.wrong_guess("i")
    assert_equal(0, @game.is_lost?)
  end


  def test_game_is_won__false_at_start
    refute(@game.is_won?)
  end


  def test_game_is_won__true
    @game.add_guessed_letter("f")
    @game.add_guessed_letter("r")
    @game.add_guessed_letter("o")
    @game.add_guessed_letter("s")
    @game.add_guessed_letter("t")
    refute(@game.is_won?)
    @game.add_guessed_letter("y")
    assert_equal("frosty", @game.is_won?)
  end


end
