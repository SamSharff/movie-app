class Movie < ApplicationRecord
  validates :title, presence: true
  validates :year, length: { is: 4 }
  validates :plot, presence: true
  validates :director, presence: true  

end
