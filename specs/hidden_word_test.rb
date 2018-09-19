require("minitest/autorun")
require("minitest/rg")
require_relative("../hidden_word.rb")


class HiddenWordTest < MiniTest::Test

  def setup()
    @word= HiddenWord.new("frosty the snowman")
  end


  def test_HiddenWord_has_word()
    assert_equal("frosty the snowman", @word.hidden_word())
  end


  def test_hide_or_display_letters__hides()
    assert_equal("****** *** *******", @word.hide_or_display_letters())
  end


  def test_hide_or_display_letters__displays()
    assert_equal("**o*** *** **o****", @word.hide_or_display_letters())
  end



end
