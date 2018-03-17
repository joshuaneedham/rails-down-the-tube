class Firearm < ApplicationRecord
  belongs_to :user
  has_many :barrels
  accepts_nested_attributes_for :barrels

  def barrels_attributes=(barrel_attributes)
   barrel_attributes.values.each do |barrel_attribute|
     barrel = Barrel.new(barrel_attribute)
     self.barrels << barrel
   end
 end
end
