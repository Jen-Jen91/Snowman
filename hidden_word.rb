class HiddenWord

  attr_accessor :word

  def initialize(word)
    @word = word
  end


  def hide(word)

    letters = word.split("")
    new_word = ""

    for item in letters
      if item != " "
        new_word += "*"
      elsif item == " "
        new_word += " "
      end
    end

    #if guessed_letters.include?(item)
    # new_word += item

    return new_word

  end


  # def contains_letter?(word, letter)
  #   word.include?(letter)
  # end




end
