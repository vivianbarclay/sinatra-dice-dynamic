require "sinatra"
require "sinatra/reloader"

get("/") do
  erb(:homepage)
end

#Dynamic code
get("/dice/:number_of_rolls/:number_of_sides") do
  @rolls = []

  number_of_rolls = params[:number_of_rolls].to_i
  number_of_sides = params[:number_of_sides].to_i

  number_of_rolls.times do
    die = rand(1..number_of_sides)

    @rolls.push(die)
  end
  
  erb(:flexible)
end  
