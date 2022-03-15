class MoviesController < ApplicationController
  def index
    movies = Movie.all
    render json: movies.as_json
  end
end

# def includes # I can't get this to work, but here are my two attempts
    
  #   #1) movie = Movie.includes(:title, :year)
  #   # render json: movie.as_json

  #   #2) Movie.includes(:title, :year)
  #   # render json: Movie.as_json
  # end
