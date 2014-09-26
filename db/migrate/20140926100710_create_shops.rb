class CreateShops < ActiveRecord::Migration
  def change
    create_table :shops do |t|
      t.string :shopcode
      t.string :shoppw

      t.timestamps
    end
  end
end
