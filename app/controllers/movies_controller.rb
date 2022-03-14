class MoviesController < ApplicationController
  def all_movies
    movies = Movie.all 
    render json: movies.as_json
  end

  # Note on one_movie (below): I was playing around with find_by and calling data. I wanted to see if movie.title (line 10) would know the movie I was calling on line 9).
  def one_movie 
    movie = Movie.find_by(year: 1992) 
    render json: {message: "You chose #{movie.title}."}
  end 

end

# def includes # I can't get this to work, but here are my two attempts
    
  #   #1) movie = Movie.includes(:title, :year)
  #   # render json: movie.as_json

  #   #2) Movie.includes(:title, :year)
  #   # render json: Movie.as_json
  # end
