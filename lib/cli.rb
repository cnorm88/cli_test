class Cli

  def start
    puts "Welcome"
    Api.fetch_drinks
    self.menu
  end

  def menu
    #give user option to see list of drinks
    puts "Would you like to see the list of drinks"
    puts "Type 'yes' to continue or any other key to exit"

    user_input = gets.strip.downcase
    #if the user says yes
    if user_input == "yes" || user_input == "y"
      puts "Good choice!"
      #display the list
      display_list_of_drinks
      user_drink_selection
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

    drink_instance = Drink.all[index]
    binding.pry
  end

end
