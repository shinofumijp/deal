class AddPasswordToShops < ActiveRecord::Migration
  def change
    add_column :shops, :password, :string
  end
end
