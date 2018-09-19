class Game

  attr_accessor :player, :hidden_word, :guessed_letters

  def initialize(player, hidden_word)
    @player = player
    @hidden_word = hidden_word
    @guessed_letters = []
  end


  def get_input

    p "Guess a letter: "
    guess = gets.chomp.downcase
    return guess

  end






end
