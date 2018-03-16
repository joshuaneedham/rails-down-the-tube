class BarrelsFirearms < ApplicationRecord
  belongs_to :barrel
  belongs_to :firearm
end
