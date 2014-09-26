class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string :name
      t.string :furigana
      t.string :codename
      t.string :tel
      t.string :mail

      t.timestamps
    end
  end
end
