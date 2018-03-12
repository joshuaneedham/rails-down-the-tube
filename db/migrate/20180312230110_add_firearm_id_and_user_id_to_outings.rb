class AddFirearmIdAndUserIdToOutings < ActiveRecord::Migration[5.1]
  def change
    add_reference :outings, :firearm, foreign_key: true
    add_reference :outings, :user, foreign_key: true
  end
end
