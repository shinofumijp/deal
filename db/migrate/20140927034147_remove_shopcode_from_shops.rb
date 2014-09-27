class RemoveShopcodeFromShops < ActiveRecord::Migration
  def change
    remove_column :shops, :shopcode, :string
  end
end
