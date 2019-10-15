# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'
User.destroy_all
Movie.destroy_all
MovieStatus.destroy_all
Recomendation.destroy_all

puts "Foooooooooo"
#Create default movies
20.times do |i|
  movie_data_base = TheMovieDbService.new
  movie_info     = movie_data_base.get_movie_info(id: rand(400..500))
  
  unless movie_info[:name].nil?
    Movie.create!(
      name:         movie_info[:name],
      country:      movie_info[:country],
      genres:       movie_info[:genres],
      release:      movie_info[:release],
      score:        movie_info[:score],
      duration_min: movie_info[:duration_min], 
      image:        movie_info[:image],
      synopsis:     movie_info[:synopsis]
    )
  end
end

user = User.create!(email: "michael@one.com", password: "123456")

movie_data_base = TheMovieDbService.new

8.times do |i|
  movie_info = movie_data_base.get_movie_info(id: rand(400..500))
  
  unless movie_info[:name].nil?
    user.movies.create!(
      name:         movie_info[:name],
      country:      movie_info[:country],
      genres:       movie_info[:genres],
      release:      movie_info[:release],
      score:        movie_info[:score],
      duration_min: movie_info[:duration_min], 
      image:        movie_info[:image],
      synopsis:     movie_info[:synopsis]
    )
  end
  
  MovieStatus.create!(movie_id: Movie.last.id, user_id: user.id, watch_later: true, watched: false)
end
