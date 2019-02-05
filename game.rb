class Game

  attr_accessor :player, :hidden_word, :guessed_letters

  def initialize(player, hidden_word)
    @player = player
    @hidden_word = hidden_word
    @guessed_letters = []
  end

  def guess(letter)
    if @guessed_letters.include?(letter) == false
      @guessed_letters.push(letter)
    end

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
    if @player.lives <= 0
      return @player.lives
    end
  end

  def is_won?()
    if reveal_word().include?("*") == false
      return reveal_word
    end
  end

  def clear
    if Gem.win_platform?
      system 'cls'
    else
      system 'clear'
    end
  end

end
