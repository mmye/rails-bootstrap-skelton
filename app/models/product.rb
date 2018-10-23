class Product < ApplicationRecord
  belongs_to :category
  validates_presence_of :price

  def self.to_csv(options = {} )
    CSV.generate(options) do |csv|
      csv << column_names
      all.order(:id).each do |product|
        csv << product.attributes.values_at(*column_names)
      end
    end
  end

  def self.accessible_attributes
    ["name", "category_id" ,"price", "released_on"]
  end
end
