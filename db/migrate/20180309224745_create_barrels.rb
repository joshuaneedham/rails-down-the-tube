class CreateBarrels < ActiveRecord::Migration[5.1]
  def change
    create_table :barrels do |t|
      t.string :caliber
      t.string :barrel_type
      t.decimal :length
      t.decimal :twist
      t.string :contour
      t.string :rifling
      t.references :firearm, foreign_key: true

      t.timestamps null: false

    end
  end
end
