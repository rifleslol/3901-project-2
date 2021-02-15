require_relative 'Deck'

keep_running = "run"
session_score = 0
session_top_score = 0
session_game_count = 0
last_input = ""
playing_deck = Deck.new()
played_deck = []
deck_on_table = []
cards_on_table = 0
cards_in_deck = 0
output_first_line = ""
output_second_line = ""
output_third_line = ""

puts "Welcome to the game of Set! \n"
puts "To quit at any time, type quit\n"
puts "The game is played 12 cards at a time. The goal is to make a set of three cards that have nothing in common with one-another!\n"
puts "Every card is given a number: 1-12, to make a set, enter the three numbers separated by spaces!\n"
puts "For example, if cards 3, 5, and 10 are a set, enter: 3 5 10 or 5 10 3 or 10 3 5\n"

def print_deck(on_screen_deck) # Take the on-screen deck and print it
  output_string = ""
  on_screen_deck.each do |card|
    output_string = output_string + "---------- "
  end
  output_string = output_string + "\n"
  puts output_string

  output_string = ""
  on_screen_deck.each do |card|
  output_string = output_string + "|" + card[0] + "| "
  end
  puts output_string + "\n"

  output_string = ""
  on_screen_deck.each do |card|
  output_string = output_string + "|" + card[1] + "| "
  end
  puts output_string + "\n"

  output_string = ""
  on_screen_deck.each do |card|
  output_string = output_string + "|" + card[2] + "| "
  end
  puts output_string + "\n"

  output_string = ""

  on_screen_deck.each do |card|
    output_string = output_string + "---------- "
  end
  output_string = output_string + "\n"
  puts output_string
  output_string = ""
  x = 1
  on_screen_deck.each do |index|
    output_string = output_string + x.to_s + "          "
    x = x + 1
  end
  puts output_string + "\n"

end

def pair_checker(table_deck, selection)
  is_a_set = true
  first_card = table_deck[selection[0]]
  second_card = table_deck[selection[1]]
  third_card = table_deck[selection[2]]

  first_card.each do |first_values|
    second_card.each do |second_values|
      third_card.each do |third_values|
        if first_values == second_values || first_values == third_values || second_values == third_values
          is_a_set = false
        end
      end
    end
end
if is_a_set
  set_found(table_deck, selection)
else
  puts (selection[0] + 1).to_s + (selection[1] + 1).to_s + (selection[2] + 1).to_s + " is not a set."
end
end

def set_found(table_deck, selection)
  puts (selection[0] + 1).to_s + " " + (selection[1] + 1).to_s + " " + (selection[2] + 1).to_s + " was a set! Nice job!\n"
  session_score = session_score + 1
  table_deck.delete_at(selection[0].to_i)
  table_deck.delete_at(selection[1].to_i)
  table_deck.delete_at(selection[2].to_i)
end

while keep_running != "quit" do
  while cards_on_table < 12 && playing_deck.count > 0 do # Build the on-screen deck
    current_card = playing_deck.delete_at(rand(playing_deck.count)) # Randomly pop a card from the playing_deck
    played_deck << current_card.dup
    deck_on_table << current_card
    cards_on_table = cards_on_table + 1
  end
  print_deck(deck_on_table)
  puts "Please make a selection, if there is no set, type 'give up' to reset"
  keep_running = gets.chomp
  if keep_running != "give up" && keep_running != "quit"
    card_selection = keep_running.split(" ")
    card_selection[0] = card_selection[0].to_i - 1
    card_selection[1] = card_selection[1].to_i - 1
    card_selection[2] = card_selection[2].to_i - 1
    pair_checker(deck_on_table, card_selection)
  end

end
puts "\nThanks for playing! High score for the sessions was: " + session_top_score.to_s
