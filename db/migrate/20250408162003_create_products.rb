class CreateProducts < ActiveRecord::Migration[8.0]
  def change
    create_table :products do |t|
      t.string :title
      t.integer :stock
      t.text :description
      t.string :category
      t.string :tags
      t.decimal :price
      t.decimal :discountPercentage
      t.decimal :rating
      t.string :brand
      t.string :sku
      t.decimal :weight
      t.integer :minimumOrderQuantity

      t.timestamps
    end
  end
end
