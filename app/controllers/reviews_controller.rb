class ReviewsController < ApplicationController
  def new
    # we need @course in our `simple_form_for`
    @course = Course.find(params[:course_id])
    authorize @course, :show?
    @review = @course.reviews.new
  end
end

