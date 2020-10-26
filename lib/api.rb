class Api
  def self.fetch_drinks
    url = "https://www.thecocktaildb.com/api/json/v1/1/search.php?s=margarita"
    url = URI(url)
    response = Net::HTTP.get(url)
    hash = JSON.parse(response)
    #storing the array:
    drinks_array = hash["drinks"]
    #strDrink - name
    #strInstructions
    #strInstructionsDE
    #strGlass
    # :name, :Instructions, :glass, :german_instructions
    drinks_array.each do |drink_hash|
      drink = Drink.new
      drink.name = drink_hash["strDrink"]
      drink.instructions = drink_hash["strInstructions"]
      drink.glass = drink_hash["strGlass"]
      drink.german_instructions = drink_hash["strInstructionsDE"]
    end

 end
end
