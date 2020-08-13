class OrderSerializer < ActiveModel::Serializer
  belongs_to :user
  attributes :id, :user_id, :cartItems, :shipping, :payment, :itemsPrice, :taxPrice, :shippingPrice, :totalPrice, 
  :isPaid, :paidAt, :isDelivered, :deliveredAt, :created_at, :updated_at
end
