class AddUserIdToBarrelsFirearms < ActiveRecord::Migration[5.1]
  def change
    add_reference :barrels_firearms, :user, foreign_key: true
  end
end
