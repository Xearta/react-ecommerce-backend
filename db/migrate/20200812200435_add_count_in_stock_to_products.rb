class AddCountInStockToProducts < ActiveRecord::Migration[6.0]
  def change
    add_column :products, :countInStock, :integer
  end
end
