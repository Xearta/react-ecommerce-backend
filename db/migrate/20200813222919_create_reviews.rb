class CreateReviews < ActiveRecord::Migration[6.0]
  def change
    create_table :reviews do |t|
      t.string :product_id
      t.string :name
      t.integer :rating
      t.string :comment

      t.timestamps
    end
  end
end
