class Outing < ApplicationRecord
  belongs_to :user
  has_many :firearms, through: :firearms_outings
  accepts_nested_attributes_for :firearms
end
