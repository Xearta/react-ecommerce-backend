class Api::V1::ReviewsController < ApplicationController
  before_action :set_product, except: [:destroy]

  # GET /products/:id/reviews
  def index
    render json: @product.reviews
  end

  # GET /reviews/1
  def show
    @review = Review.find(params[:id])
    render json: @review
  end

  # POST /reviews
  def create
    @review = @product.reviews.new(review_params)
    @product.numReviews = @product.reviews.length;
    
    # Set the product rating when adding a review
    ratingsArray = []
    @product.reviews.each do |review|
        ratingsArray << review.rating
    end

    @product.rating = (ratingsArray.reduce(:+) / @product.reviews.length.to_f)

    binding.pry

    @product.save
    @review.save
      render json: @product
  end

  # DELETE /reviews/1
  def destroy
    @review = Review.find(params[:id])
    @review.destroy
    render json: @product
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_product
      @product = Product.find(params[:product_id])
    end

    # Only allow a trusted parameter "white list" through.
    def review_params
      params.require(:review).permit(:product_id, :name, :rating, :comment)
    end
end
