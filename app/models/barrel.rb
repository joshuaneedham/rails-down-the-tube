class Barrel < ApplicationRecord
  belongs_to :firearm
  belongs_to :user, through: :firearm
end

