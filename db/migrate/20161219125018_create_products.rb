class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.integer :item_id
      t.date :estimate_sale_start

      t.timestamps
    end
  end
end
