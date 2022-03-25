class Movie < ApplicationRecord
  has_many :movie_genres
  has_many :genres, through: :movie_genres
  has_many :actors 

  # validates :title, presence: true
  # validates :year, length: { is: 4 }
  # validates :plot, presence: true
  # validates :director, presence: true  

end
