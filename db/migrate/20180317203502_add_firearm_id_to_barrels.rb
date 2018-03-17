class AddFirearmIdToBarrels < ActiveRecord::Migration[5.1]
  def change
    add_reference :barrels, :firearm, foreign_key: true
  end
end
