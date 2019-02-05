require_relative("./game.rb")
require_relative("./hidden_word.rb")
require_relative("./player.rb")

player1 = Player.new("Player 1")

puts "Hi #{player1.name}! Please enter a word or phrase: "
input = gets.chomp.downcase

player2 = Player.new("Player 2")
hidden_word = HiddenWord.new(input)

snowman = Game.new(player2, hidden_word)

snowman.clear

puts "Hi #{player2.name}! Welcome to Snowman!"

until snowman.is_won? || snowman.is_lost?
  puts "Your hidden word/phrase is: #{snowman.reveal_word}"
  puts "#{snowman.lives_remaining} lives remaining"
  puts "Guess a letter: "
  snowman.guess(gets.chomp[0])
  snowman.clear
end

if snowman.is_won?
  puts "Yay, you win! The word was '#{snowman.reveal_word}''"
end

if snowman.is_lost?
  puts "Sorry, you lost! The word was '#{input}'"
end
