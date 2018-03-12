class Firearm < ApplicationRecord
  belongs_to :user
  has_many :outings
  has_many :barrels
end
