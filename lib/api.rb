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

 end
end
