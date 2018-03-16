class CreateJoinTableBarrelsFirearms < ActiveRecord::Migration[5.1]
  def change
    create_join_table :barrels, :firearms do |t|
      t.index [:barrel_id, :firearm_id]
      t.index [:firearm_id, :barrel_id]
    end
  end
end
