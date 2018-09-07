class Outing < ApplicationRecord
  belongs_to :firearm
  belongs_to :user


  def self.comp_match
    Outing.where(outing_type: "Competition/Match").last.firearm.name
  end

  def self.hunting
    Outing.where(outing_type: "Hunting").last.firearm.name
  end

  def self.range
    Outing.where(outing_type: "Range").last.firearm.name
  end
end
