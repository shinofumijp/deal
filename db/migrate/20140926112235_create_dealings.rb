class CreateDealings < ActiveRecord::Migration
  def change
    create_table :dealings do |t|
      t.references :client_id, index: true
      t.references :shop_id, index: true
      t.references :payment_id, index: true

      t.timestamps
    end
  end
end
