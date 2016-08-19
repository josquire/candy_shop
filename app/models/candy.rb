class Candy < ApplicationRecord

  belongs_to :candy_store

  validates_presence_of :name, :cost

  def info
    "The #{name}."
  end

end
