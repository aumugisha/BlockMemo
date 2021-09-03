class ChaptersController < ApplicationController

    def index
        set_course
        @chapters = Chapter.where("course_id = ?", params[:course_id])
        set_subscription
    end

    def show
        set_subscription
        @chapter = Chapter.find_by(order: @subscription.chapter_completed + 1 , course_id: @subscription.course_id )
        authorize @chapter
    end


    def set_course
        @course = Course.find(params[:course_id])
    end

    def set_subscription
        @subscription =Subscription.find_by(user_id: current_user.id ,course_id: params[:course_id])
    end

end
