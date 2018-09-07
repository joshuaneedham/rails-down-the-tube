class Firearm < ApplicationRecord
  belongs_to :user
  has_many :barrels
  has_many :outings

  def barrels_attributes=(barrel_attributes)
    barrel_attributes.values.each do |barrel_attribute|
      barrel = Barrel.new(barrel_attribute)
      self.barrels << barrel
    end
  end

end
