# frozen_string_literal: true

class CreateMovies < ActiveRecord::Migration[5.2]
  def change
    create_table :movies do |t|
      t.string :title
      t.string :description
      t.string :gender
      t.date :release
      t.integer :quantity
      t.float :rent_price

      t.timestamps
    end
  end
end
