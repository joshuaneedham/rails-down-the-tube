class Barrel < ApplicationRecord
  has_one :firearm
  has_many :outings, through: :firearms
end

