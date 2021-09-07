class ChaptersController < ApplicationController

    def index
        set_course
        @chapters = Chapter.where("course_id = ?", params[:course_id])
        set_subscription
    end

    def show
        set_subscription

        if params[:wanted].nil?
        @chapter = Chapter.find_by(order: @subscription.chapter_completed + 1 , course_id: @subscription.course_id )
        if @chapter.nil?
            @chapter = @subscription.course.chapters.first
        end
         else
            @chapter = Chapter.find_by(order: params[:wanted] , course_id: @subscription.course_id )
         end
        authorize @chapter
    end

private
    def set_course
        @course = Course.find(params[:course_id])
    end

    def set_subscription
        @subscription =Subscription.find_by(user_id: current_user.id ,course_id: params[:course_id])
    end

end
