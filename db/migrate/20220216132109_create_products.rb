class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :title
      t.text :description
      t.decimal :price
      t.string :sku
      t.integer :stock
      t.string  :image_url
      t.references :region

      t.timestamps
    end
  end
end
