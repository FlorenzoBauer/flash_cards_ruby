require './card'
require './turns'
require './deck'
require './round'
require 'pry'

def start
    cards = [
        Card.new("Capital of France?", "Paris", "Geography"),
        Card.new("Largest planet in our solar system?", "Jupiter", "Science"),
        Card.new("Who wrote 'Romeo and Juliet'?", "William Shakespeare", "Literature"),
        Card.new("What is the powerhouse of the cell?", "Mitochondria", "Biology"),
    ]
    
    deck = Deck.new(cards)
    round = Round.new(deck)
  
    puts "Welcome! You're playing with #{deck.count} cards."
    puts "-------------------------------------------------"
  
    while round.current_card
      turn_number = round.turns.length + 1
      puts "This is card number #{turn_number} out of #{deck.count}."
      puts "Question: #{round.current_card.question}"
      
      # Assume user input is stored in a variable named 'user_guess'
      print "type your guess: ___"
      user_guess = gets.chomp
      
      
      result = round.take_turn(user_guess)
      
      # Display the result
      puts result.feedback
    end
    
    puts "***** Game Over *****"
    puts "You completed the game!"
    puts "Total number of correct answers: #{round.number_correct}"
    puts "Overall percentage correct: #{round.percent_correct}%"
    puts "****************************************************"
    binding.pry
end  

start