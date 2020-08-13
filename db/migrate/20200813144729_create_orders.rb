class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders, id: :uuid do |t|
      t.string :user_id
      t.jsonb :cartItems
      t.jsonb :shipping
      t.jsonb :payment
      t.float :itemsPrice
      t.float :taxPrice
      t.float :shippingPrice
      t.float :totalPrice
      t.boolean :isPaid, default: false
      t.date :paidAt
      t.boolean :isDelivered, default: false
      t.date :deliveredAt

      t.timestamps
    end
  end
end
