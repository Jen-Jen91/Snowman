require("minitest/autorun")
require("minitest/rg")
require_relative("../hidden_word.rb")

class HiddenWordTest < MiniTest::Test

  def setup()
    @hidden_word1= HiddenWord.new("Frosty the Snowman")
  end


  def test_HiddenWord_has_word()
    assert_equal("Frosty the Snowman", @hidden_word1.word)
  end

  # def test_hide_letters()
  #   assert_equal("****** *** *******", @hidden_word1.hide("Frosty the Snowman"))
  # end

  def test_word_contains_letter__true()
    assert_equal(true, @hidden_word1.contains_letter?("Frosty the Snowman", "y"))
  end

  def test_word_contains_letter__false()
    assert_equal(false, @hidden_word1.contains_letter?("Frosty the Snowman", "x"))
  end


end
