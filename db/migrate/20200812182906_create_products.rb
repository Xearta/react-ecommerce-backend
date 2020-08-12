class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products, id: :uuid do |t|
      t.string :name
      t.string :category
      t.string :image
      t.string :description
      t.float :price
      t.string :brand
      t.float :rating
      t.integer :numReviews
      t.boolean :status
      t.timestamps
    end
  end
end
