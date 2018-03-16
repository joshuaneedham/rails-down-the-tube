class CreateJoinTableFirearmsOutings < ActiveRecord::Migration[5.1]
  def change
    create_join_table :firearms, :outings do |t|
      t.index [:firearm_id, :outing_id]
      t.index [:outing_id, :firearm_id]
    end
  end
end
