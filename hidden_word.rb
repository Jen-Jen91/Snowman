class HiddenWord

  attr_accessor :hidden_word

  def initialize(hidden_word)
    @hidden_word = hidden_word
  end

  def hide_or_display_letters(guesses = [])

    letters = @hidden_word.split("")
    displayed_word = ""

    for char in letters
      if guesses.include?(char)
        displayed_word += char
      elsif char == " "
        displayed_word += " "
      elsif guesses.include?(char) == false
        displayed_word += "*"
      end
    end

    return displayed_word
  end

  def include?(letter)
    return @hidden_word.include?(letter)
  end

end
