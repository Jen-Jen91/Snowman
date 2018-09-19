class HiddenWord

  attr_accessor :word

  def initialize(word)
    @word = word
  end


  # def hide(word)
  #
  #   letters = word.split("")
  #
  #   for item in letters
  #     if item != " "
  #       return "*"
  #     end
  #   end
  #
  #   return " "
  #
  # end


  def contains_letter?(word, letter)
    word.include?(letter)
  end




end
