class AddCategoryIdAndDiscontinuedToProduct < ActiveRecord::Migration[5.1]
  def change
    add_column :products, :category_id, :integer, foreign_key: true
    add_column :products, :discontinued, :bool
  end
end
