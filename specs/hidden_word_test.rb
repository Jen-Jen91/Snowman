require("minitest/autorun")
require("minitest/rg")
require_relative("../hidden_word.rb")

class HiddenWordTest < MiniTest::Test

  def setup()
    @word= HiddenWord.new("frosty")
  end

  def test_HiddenWord_has_word()
    assert_equal("frosty", @word.hidden_word())
  end

  def test_word_includes_letter
    assert_equal(true, @word.include?('o'))
  end

  def test_hide_or_display_letters__hides()
    frosty = @word.hide_or_display_letters(["x"])
    assert_equal("******", frosty)
  end

  def test_hide_or_display_letters__displays()
    frosty = @word.hide_or_display_letters(["o"])
    assert_equal("**o***", frosty)
  end

  def test_reveals_whole_word
    frosty = @word.hide_or_display_letters(["f", "r", "o", "s", "t", "y"])
    assert_equal("frosty", frosty)
  end

end
