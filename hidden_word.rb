class HiddenWord

  attr_accessor :word

  def initialize(word)
    @word = word
  end


  def hide_or_display_letters(game, word)

    letters = word.split("")
    new_word = ""

    for item in letters
      if game.guessed_letters.include?(item)
        new_word += item
      elsif item == " "
        new_word += " "
      elsif game.guessed_letters.include?(item) == false
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
