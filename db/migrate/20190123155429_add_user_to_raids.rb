class AddUserToRaids < ActiveRecord::Migration[5.2]
  def change
    add_reference :raids, :user, foreign_key: true
  end
end
