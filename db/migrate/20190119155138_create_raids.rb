# frozen_string_literal: true

class CreateRaids < ActiveRecord::Migration[5.2]
  def change
    create_table :raids do |t|
      t.string :boss_name, null: false
      t.integer :time_remaining, null: false

      t.timestamps
    end
  end
end
