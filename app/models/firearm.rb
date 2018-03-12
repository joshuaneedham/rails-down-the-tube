class Firearm < ApplicationRecord
  belongs_to :user
  has_many :barrels, through: :firearms
  has_many :outings, through: :firearms
end
