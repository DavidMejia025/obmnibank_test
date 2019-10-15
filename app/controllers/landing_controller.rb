class LandingController < ApplicationController
  def index
    movies  = Movie.all
    @movies = []

    movies.each do |movie|
      if movie.users.empty?
        @movies << movie
      end
    end

    @movies
  end
end
