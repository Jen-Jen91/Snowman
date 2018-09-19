require("minitest/autorun")
require("minitest/rg")
require_relative("../hidden_word.rb")

class HiddenWordTest < MiniTest::Test

  def setup()
    @hidden_word1= HiddenWord.new("SNOWMAN")
  end


  def test_HiddenWord_has_word
    assert_equal("SNOWMAN", @hidden_word1.word)
  end



end
