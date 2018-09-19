require("minitest/autorun")
require("minitest/rg")
require_relative("../hidden_word.rb")
require_relative("../game.rb")

class HiddenWordTest < MiniTest::Test

  def setup()
    @hidden_word1= HiddenWord.new("Frosty the Snowman")
  end


  def test_HiddenWord_has_word()
    assert_equal("Frosty the Snowman", @hidden_word1.word)
  end

  # def test_hide_or_display_letters__hides()
  #   assert_equal("****** *** *******", @hidden_word1.hide_or_display_letters("Frosty the Snowman"))
  # end

  # def test_hide_or_display_letters__displays()
  #   assert_equal("**o*** *** **o****", @hidden_word1.hide_or_display_letters("Frosty the Snowman"))
  # end











end
