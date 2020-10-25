class Cli
  def start
    puts "Welcome"
    Api.fetch_drinks
  end
end
