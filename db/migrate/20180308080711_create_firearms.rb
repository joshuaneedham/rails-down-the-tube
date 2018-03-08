class CreateFirearms < ActiveRecord::Migration[5.1]
  def change
    create_table :firearms do |t|
      t.string :name
      t.string :firearm_type
      t.text :description
      t.references :user, foreign_key: true
    end
  end
end
