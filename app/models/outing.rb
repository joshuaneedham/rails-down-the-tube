class Outing < ApplicationRecord
  has_many :firearms
  has_many :barrels, through: :firearms
end
