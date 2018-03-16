class Firearm < ApplicationRecord
  belongs_to :user
  has_many  :barrels, inverse_of: :firearm
  has_many :outings, through: :barrels
end
