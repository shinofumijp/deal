class RemoveShoppwFromShops < ActiveRecord::Migration
  def change
    remove_column :shops, :Shoppw, :string
  end
end
