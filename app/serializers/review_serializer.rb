class ReviewSerializer < ActiveModel::Serializer
  attributes :id, :product_id, :name, :rating, :comment
end
