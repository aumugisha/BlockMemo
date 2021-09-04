class ReviewsController < ApplicationController
  def new
    # we need @restaurant in our `simple_form_for`
    @course = Course.find(params[:course_id])
    @review = Review.new
  end
end
end
