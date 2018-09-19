class Game

  attr_accessor :player, :hidden_word, :guessed_letters

  def initialize(player, hidden_word)
    @player = player
    @hidden_word = ""
    @guessed_letters = []
  end


  def get_word()
    p "Please provide a word/phrase: "
    word = gets.chomp.downcase

    @hidden_word += word

    return word

  end


  def get_letter(hidden_word)
    p "Guess a letter: "
    guess = gets.chomp.downcase

    @guessed_letters.push(guess)
    hidden_word.guessed_letters.push(guess)

    return guess
  end








end
