class CreateDetails < ActiveRecord::Migration
  def change
    create_table :details do |t|
      t.references :dealing_id, index: true
      t.references :product_id, index: true
      t.integer :amount

      t.timestamps
    end
  end
end
