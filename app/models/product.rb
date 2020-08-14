class Product < ApplicationRecord
  has_many :reviews


  def update_product
      self.numReviews = self.reviews.length;
    
    # Set thae Product rating when adding a review
    ratingsArray = []
    self.reviews.each do |review|
        ratingsArray << review.rating
    end

    if ratingsArray != []
      self.rating = (ratingsArray.reduce(:+) / self.reviews.length.to_f)
    end
    self.save
    end
    

end
