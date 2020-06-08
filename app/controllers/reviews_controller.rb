class ReviewsController < ApplicationController
  def index

  end

  def new 
    @review = Review.new

  end

  def create
    @review = Review.new(review_params)
    if @review.save
      redirect_to work_path(params[:work_id])
    else   
      render :new
    end
  end

  private
  def review_params
    params.require(:review).permit(:comment).merge(work_id: params[:work_id])
  end

end
