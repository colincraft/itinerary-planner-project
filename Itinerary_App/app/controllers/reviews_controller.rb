class ReviewsController < ApplicationController
  def add
    c = Review.new review_params
    find_reviewable.reviews << c
    if c.save
      flash[:notice] = "Successfully created a review."
      # redirect_to "/movies/#{find_commentable.id}"
      redirect_to :back
    else
      flash[:notice] = "Something went wrong. Please try witha  valid comment, bitch."
    end
  end

  def delete
  end

  def edit
  end

  def show
  end
  private
  def review_params 
      params.require(:review).permit(:content)
  end
  def find_reviewable
        params.each do |name, value|
          if name =~ /(.+)_id$/
            return $1.classify.constantize.find(value)
          end
      end
      nil
  end
end

