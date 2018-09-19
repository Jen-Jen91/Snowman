class HiddenWord

  attr_accessor :word, :guessed_letters

  def initialize(word)
    @word = word
    @guessed_letters = []
  end


  def hide_or_display_letters(word)

    letters = word.split("")
    new_word = ""

    for item in letters
      if @guessed_letters.include?(item)
        new_word += item
      elsif item == " "
        new_word += " "
      elsif @guessed_letters.include?(item) == false
        new_word += "*"
      end
    end

    return new_word

  end


  # for item in letters
  #   if item != " "
  #     new_word += "*"
  #   elsif item == " "
  #     new_word += " "
  #   end
  # end





end
