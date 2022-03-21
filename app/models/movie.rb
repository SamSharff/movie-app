class Movie < ApplicationRecord
  has_many :actors
  
  # validates :title, presence: true
  # validates :year, length: { is: 4 }
  # validates :plot, presence: true
  # validates :director, presence: true  

end
