class CreateItemCategoryDetails < ActiveRecord::Migration[5.0]
  def change
    create_table :item_category_details do |t|
      t.integer :item_id
      t.integer :category_detail_id

      t.timestamps
    end
  end
end
