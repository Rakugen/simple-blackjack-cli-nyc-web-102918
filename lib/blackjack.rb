def welcome
  puts "Welcome to the Blackjack Table"
end

def deal_card
  rand(1..11)
end

def display_card_total(card_total)
    puts "Your cards add up to #{card_total}"
end

def prompt_user
  puts "Type 'h' to hit or 's' to stay"
end

def get_user_input
  gets.chomp
end

def end_game(card_total)
  puts "Sorry, you hit #{card_total}. Thanks for playing!"
#  puts "Your cards add up to #{card_total}"
end

def initial_round
  card1 = deal_card
  card2 = deal_card
  total = card1 + card2
  display_card_total(total)
  return total
end

def hit?(num)
  prompt_user
  input = get_user_input
  total = num
  if input == "h"
    total += deal_card
  elsif input == "s"
    total
  else
    invalid_command
    prompt_user
  end
  total
end

def invalid_command
  puts "Please enter a valid command"
end

#####################################################
# get every test to pass before coding runner below #
#####################################################

def runner
  welcome
  total = initial_round
  prompt_user

  until total > 21
    temp_total = hit?(total)
    if temp_total != total
      total += temp_total
    end
  end
  display_card_total(total)
  end_game(total)
end
