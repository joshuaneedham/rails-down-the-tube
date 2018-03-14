class CreateBarrelOutings < ActiveRecord::Migration[5.1]
  def change
    create_table :barrel_outings do |t|
      t.references :barrel, foreign_key: true
      t.references :outing, foreign_key: true
      t.integer :shots_fired
    end
  end
end
