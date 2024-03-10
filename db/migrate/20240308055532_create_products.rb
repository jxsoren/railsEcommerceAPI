class CreateProducts < ActiveRecord::Migration[7.1]
  def change
    create_table :products do |t|
      t.string :name
      t.string :description
      t.decimal :price
      t.integer :category_id
      t.integer :stock_quantity
      t.string :sku
      t.string :image_url
      t.boolean :is_active
      t.decimal :weight
      t.string :dimensions
      t.string :color
      t.string :size
      t.decimal :rating

      t.timestamps
    end
  end
end

