class ReviewsController < ApplicationController
  before_action :set_course, only: [:new, :create]

  def new
    # we need @course in our `simple_form_for`
    @course = Course.find(params[:course_id])
    authorize @course, :show?
    @review = @course.reviews.new
  end

  def create
    @review = Review.new(review_params)
    # we need `course_id` to associate review with corresponding 
    @course = Course.find(params[:course_id])
    @review.course = @course
    authorize @course, :show?
    @review.save
    redirect_to course_path(@course)
  end

  private

  def set_course
    @course = Course.find(params[:course_id])
  end

  def review_params
    params.require(:review).permit(:comment)
  end
end

