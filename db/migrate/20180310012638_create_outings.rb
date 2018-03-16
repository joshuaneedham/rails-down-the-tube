class CreateOutings < ActiveRecord::Migration[5.1]
  def change
    create_table :outings do |t|
      t.datetime :date
      t.integer :shots_fired
      t.references :user, foreign_key: true
      t.references :barrel, foreign_key: true
      t.references :firearm, foreign_key: true

      t.timestamps null: false
    end
  end
end
