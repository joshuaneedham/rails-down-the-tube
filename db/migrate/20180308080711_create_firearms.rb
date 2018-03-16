class CreateFirearms < ActiveRecord::Migration[5.1]
  def change
    create_table :firearms do |t|
      t.string :name
      t.string :firearm_type
      t.text :description
      t.references :user, foreign_key: true
      t.references :barrel, foreign_key: true
      t.references :outing, foreign_key: true

      t.timestamps null: false
    end
  end
end
