class MoviesController < ApplicationController
  def index
    movies = Movie.all
    render json: movies.as_json
  end

  def create
    movie = Movie.new(
      title: params["title"],
      year: params["year"],
      plot: params["plot"],
      director: params["director"],
      english: params["english"]
    
      )
    movie.save
    render json: movie.as_json
  end

  def show
    movie_id = params["id"]
    movie = Movie.find_by(id: movie_id)
    render json: movie.as_json
  end

  def update
    movie_id = params["id"]
    movie = Movie.find_by(id: movie_id)

    movie.title = params["title"] || movie.title
    movie.year = params["year"] || movie.year
    movie.plot = params["plot"] || movie.plot
    
    movie.save
    render json: movie.as_json
  end

  def destroy
    movie_id = params["id"]
    movie = Movie.find_by(id: movie_id)

    movie.destroy
    render json: {message: "BOOM! CRASH! SLAM! Your movie has been destroy!"}.as_json
  end


end



# def includes # I can't get this to work, but here are my two attempts
    
  #   #1) movie = Movie.includes(:title, :year)
  #   # render json: movie.as_json

  #   #2) Movie.includes(:title, :year)
  #   # render json: Movie.as_json
  # end
