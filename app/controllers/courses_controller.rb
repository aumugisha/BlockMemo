class CoursesController < ApplicationController

  def index
    if params[:query].present?
      @courses = Course.where("name ILIKE ?", "%#{params[:query]}%")
      @chapters = Chapter.where("name ILIKE ?", "%#{params[:query]}%")
    else
      @courses = Course.all
    end
  end


    def show
      @course = Course.find(params[:id])
      @subscription =Subscription.find_by(user_id: current_user.id ,course_id: params[:id])
      authorize @course 
    end
end


