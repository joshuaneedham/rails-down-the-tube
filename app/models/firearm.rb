class Firearm < ApplicationRecord
  belongs_to :user
  has_many :barrels
  has_many :barrels, through: :barrels_firearms
  has_many :outings

  def barrels_attributes=(barrel_attributes)
    barrel_attributes.values.each do |barrel_attribute|
      barrel = Barrel.new(barrel_attribute)
      self.barrels << barrel
    end
  end
  
  # def outings_attributes=(outing_attributes)
  #   outing_attributes.values.each do |outing_attribute|
  #     outing = Outing.new(outing_attribute)
  #     self.outings << outing
  #   end
  # end
end
