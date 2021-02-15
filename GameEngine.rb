require_relative 'Deck'

keep_running = true
session_top_score = 0
session_game_count = 0
last_input = ""
playing_deck = Deck.new()
played_deck = []
deck_on_table = []
cards_on_table = 0
cards_in_deck = 0
output_dashes = ""
output_first_line = ""
output_second_line = ""
output_third_line = ""

puts "Welcome to the game of Set! \n"
puts "To quit at any time, type quit\n"
puts "The game is played 12 cards at a time. The goal is to make a set of three cards that have nothing in common with one-another!\n"
puts "Every card is given a number: 1-12, to make a set, enter the three numbers separated by spaces!\n"
puts "For example, if cards 3, 5, and 10 are a set, enter: 3 5 10 or 5 10 3 or 10 3 5\n"

def print_deck(on_screen_deck) # Take the on-screen deck and print it
  on_screen_deck.each do |card|
    line_builder(card)
  end
  puts output_string + "\n"
  on_screen_deck.length.times do |i|
    output_meat

def line_builder(card)


while keep_running do
  while cards_on_table < 12 && playing_deck.length > 0 do # Build the on-screen deck
    current_card = playing_deck.delete_at(rand(playing_deck.length)) # Randomly pop a card from the playing_deck
    played_deck << current_card.dup
    deck_on_table << current_card
  end
  print_deck(deck_on_table)
