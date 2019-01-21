class CreateJoinTableRaidUser < ActiveRecord::Migration[5.2]
  def change
    create_join_table :raids, :users do |t|
      t.index [:raid_id, :user_id]
      # t.index [:user_id, :raid_id]
    end
  end
end
