class Firearm < ApplicationRecord
  belongs_to :user
  has_many :outings, through: :firearms_outings
  has_many :barrels, through: :barrels_firearms
  accepts_nested_attributes_for :barrels

end
