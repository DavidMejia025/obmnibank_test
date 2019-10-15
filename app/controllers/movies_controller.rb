class MoviesController < ApplicationController
  def index
    @movie = Movie.new

    @movies = current_user.movies.order("score DESC")
  end
  
  def create
    @movie = current_user.movies.create(movie_params)

    redirect_to movies_path
  end

  def show
    @movie = Movie.find(params[:id])
  end

  def edit
  end

  def delete
    @movie = Movie.find(params[:id])
    @movie.destroy
    
    redirect_to movies_path
  end
 
  private
    def movie_params
      params.require(:movie).permit(
        :name,
        :country,
        :genres,
        :release,
        :score,
        :duration_min, 
        :image, 
        :synopsis
      )
    end
end
