class BarrelFirearm < ApplicationRecord
  belongs_to :user
  belongs_to :barrel
  belongs_to :firearm
end