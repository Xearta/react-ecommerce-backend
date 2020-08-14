class ProductSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :category, :image, :price, :brand, 
  :rating, :numReviews, :countInStock, :reviews
end
