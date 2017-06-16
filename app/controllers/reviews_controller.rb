class ReviewsController < ApplicationController
  def create
    @field = Field.find(params[:field_id])
    @review = Review.new(review_params)
    @review.field = @field
    if @review.save
      redirect_to field_path(@field)
    else
      render 'fields/show'
    end
  end

  private

  def review_params
    params.require(:review).permit(:content)
  end
end
