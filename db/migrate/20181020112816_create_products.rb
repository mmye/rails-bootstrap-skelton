class CreateProducts < ActiveRecord::Migration[5.1]
  def change
    create_table :products do |t|
      t.string :name
      t.integer :category_id, foreign_key: true, index: false
      t.integer :price
      t.boolean :discontinued
      t.date :released_on

      t.timestamps
    end
    add_index :products, ["category_id"], :name => "index_products_on_category_id"
  end
end
