class Cli

  def start
    puts "Welcome"
    Api.fetch_drinks
    self.menu
  end

  def menu
    #give user option to see list of drinks
    puts "Would you like to see the list of drinks?"
    puts "Type 'yes' to continue or any other key to exit"

    user_input = gets.strip.downcase
    #if the user says yes
    if user_input == "yes" || user_input == "y"
      puts "Good choice!"
      #display the list
      display_list_of_drinks
      user_drink_selection

      sleep(2)
      puts "\n"

      menu
    else
      puts "Goodbye"
    end
  end

  def display_list_of_drinks
    #access all the drinks
    #print each one out
    Drink.all.each.with_index(1) do |drink, index|
      puts "#{index}. #{drink.name}"
    end
  end

  def user_drink_selection
    #ask use for choice
    puts "Enter the number of the drink you'd like"
    index = gets.strip.to_i - 1
    #index valid? #btwn 0 & 6
    until index.between?(0, Drink.all.length - 1)
      # keep asking for user input
      puts "Sorry invalid input. Choose a valid number"
      index = gets.strip.to_i - 1
    end

    drink_instance = Drink.all[index]
    display_drink_details(drink_instance)
  end

  def display_drink_details(drink)
    sleep(1)
    puts "\n"
    puts drink.name
    puts "Glass: " + drink.glass
    puts "Instructions: " + drink.instructions
    puts "German Instructions: " + drink.german_instructions
  end

end
