class AddAvailableToMovies < ActiveRecord::Migration[5.2]
  def change
    add_column :movies, :available, :boolean, default: true, null: false
  end
end
