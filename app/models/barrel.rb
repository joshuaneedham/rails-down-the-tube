class Barrel < ApplicationRecord
  belongs_to :firearm, inverse_of: :barrels
  has_many :barrel_outings
  has_many :outings, through: :barrel_outings

end
