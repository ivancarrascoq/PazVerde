class CreateProductUrls < ActiveRecord::Migration[5.2]
  def change
    create_table :product_urls do |t|
      t.integer :product_id
      t.string :url

      t.timestamps
    end
  end
end
