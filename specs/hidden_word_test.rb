require("minitest/autorun")
require("minitest/rg")
require_relative("../hidden_word.rb")
require_relative("../game.rb")

class HiddenWordTest < MiniTest::Test

  def setup()
    @hidden_word1= HiddenWord.new()
    @game1 = Game.new("John", @hidden_word1)
  end


  def test_HiddenWord_has_word()
    @game1.get_word(@hidden_word1)
    assert_equal("frosty the snowman", @hidden_word1.word)
  end


  def test_hide_or_display_letters__hides()
    @game1.get_letter(@hidden_word1)
    assert_equal("****** *** *******", @hidden_word1.hide_or_display_letters("frosty the snowman"))
  end


  def test_hide_or_display_letters__displays()
    @game1.get_letter(@hidden_word1)
    assert_equal("**o*** *** **o****",      @hidden_word1.hide_or_display_letters("frosty the snowman"))
  end



end
