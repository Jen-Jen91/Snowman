class HiddenWord

  attr_accessor :hidden_word

  def initialize(hidden_word)
    @hidden_word = hidden_word
  end


  def hide_or_display_letters(guesses = [])

    letters = @hidden_word.split("")
    displayed_word = ""

    for item in letters
      if guesses.include?(item)
        displayed_word += item
      elsif item == " "
        displayed_word += " "
      elsif guesses.include?(item) == false
        displayed_word += "*"
      end
    end

    return displayed_word

  end


  def include?(letter)
    return @hidden_word.include?(letter)
  end



end
