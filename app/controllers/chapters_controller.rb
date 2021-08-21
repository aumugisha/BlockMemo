class ChaptersController < ApplicationController

    def index
        set_course
        @chapters = Chapter.where("title = ?", params[:course_id])

    end

    def show
        @chapter = Chapter.find(params[:id]) 
        authorize @chapter
    end


    def set_course
        @course = Course.find(params[:course_id])
    end
end
