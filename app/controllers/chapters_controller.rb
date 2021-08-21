class ChaptersController < ApplicationController

    def index
        set_course
        @chapters = Chapter.where("course_id = ?", params[:course_id])
        set_subscription
    end

    def show
        @chapter = Chapter.find(params[:id]) 
        authorize @chapter
    end


    def set_course
        @course = Course.find(params[:course_id])
    end

    def set_subscription
        @subscription =Subscription.where("user_id = ? AND course_id = ?", current_user.id, params[:course_id]) 
    end

end
