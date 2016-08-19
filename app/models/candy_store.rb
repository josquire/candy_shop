class CandyStore < ApplicationRecord

  has_many :candies

  validates_presence_of :name

end
