class Barrel < ApplicationRecord
  belongs_to :firearm
  has_many :firearms
  has_many :outings, through: :firearms_outings
  # accepts_nested_attributes_for :firearms

  def firearms=(firearms)
    firearms.each do |firearm|
      self.firearms.build(firearm_params)
    end
  end
end

