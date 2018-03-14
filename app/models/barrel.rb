class Barrel < ApplicationRecord
  belongs_to :firearm
  has_many :barrel_outings
  has_many :outings, through: :barrel_outings


  # def firearm_user
  #   self.firearm.user
  # end

end
