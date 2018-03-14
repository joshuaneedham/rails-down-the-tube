class Outing < ApplicationRecord
belongs_to :user
has_many :barrel_outings
has_many :barrels, through: :barrel_outings
has_many :firearms, through: :barrels
end
