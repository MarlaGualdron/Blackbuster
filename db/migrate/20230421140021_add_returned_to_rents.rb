class AddReturnedToRents < ActiveRecord::Migration[5.2]
  def change
    add_column :rents, :returned, :boolean, default: false
  end
end
