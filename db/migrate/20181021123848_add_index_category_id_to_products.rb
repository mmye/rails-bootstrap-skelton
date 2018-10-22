class AddIndexCategoryIdToProducts < ActiveRecord::Migration[5.1]
  def change
    add_index :products, ["category_id"], :name => "index_products_on_category_id"
  end
end
