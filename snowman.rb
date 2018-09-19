require_relative("./game.rb")
require_relative("./hidden_word.rb")
require_relative("./player.rb")

puts "Please enter a word or phrase:"
input = gets.chomp

player = Player.new("Player 1")
hidden_word = HiddenWord.new(input)

snowman = Game.new(player, hidden_word)

print %x{clear}


until snowman.is_won? || snowman.is_lost?
  puts "Welcome to Snowman!"
  puts "The hidden word is: #{snowman.reveal_word}"
  puts "#{snowman.lives_remaining} lives remaining"
  puts "Guess a letter: "
  snowman.add_guessed_letter(gets.chomp[0])
  snowman.wrong_guess(gets.chomp[0])
  print %x{clear}
end

if snowman.is_won?
  puts "Yay, you win! The word was #{snowman.reveal_word}"
end

if snowman.is_lost?
  puts "Sorry, you lost! The word was #{input}"
end
