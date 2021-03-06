# frozen_string_literal: true

class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :sellers do |t|
      t.string :name, null: false
      t.string :email, null: false
      t.timestamps
    end
  end
end
