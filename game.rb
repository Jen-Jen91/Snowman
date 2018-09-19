class Game

  attr_accessor :player, :hidden_word, :guessed_letters

  def initialize(player, hidden_word)
    @player = player
    @hidden_word = hidden_word
    @guessed_letters = []
  end


  def add_guessed_letter(letter)
    if @guessed_letters.include?(letter) == false
      @guessed_letters.push(letter)
    end
  end

  def wrong_guess(letter)
    add_guessed_letter(letter)
    if @hidden_word.include?(letter) == false
      @player.lose_life
    end
  end

  def reveal_word()
    @hidden_word.hide_or_display_letters(@guessed_letters)
  end

  def lives_remaining()
    return @player.lives
  end

  def is_lost?()
    return @player.lives <= 0
  end

  def is_won?()
    return !reveal_word().include?("*")
  end

end




  # def get_word(hidden_word)
  #   p "Please provide a word/phrase: "
  #   word = gets.chomp.downcase
  #
  #   @hidden_word += word
  #   hidden_word.word += word
  #
  #   return word
  #
  # end
  #
  #
  # def get_letter(hidden_word)
  #   p "Guess a letter: "
  #   guess = gets.chomp.downcase
  #
  #   @guessed_letters.push(guess)
  #   hidden_word.guessed_letters.push(guess)
  #
  #   return guess
  # end
  #
  #
  # def wrong_guess(hidden_word, player)
  #
  #   guess = get_letter(hidden_word)
  #
  #   if hidden_word.include?(guess) == false
  #     player.lives -= 1
  #   end
  #
  # end
