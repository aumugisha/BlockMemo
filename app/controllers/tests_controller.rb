class TestsController < ApplicationController

    def edit
        tests = Test.where("chapter_id = ?", params[:chapter_id] )
        @test = tests.sample
        authorize @test
    end

    def update
        @test = Test.find(params[:id])
        @test.choice = params[:test][:choice]
        @subs = Subscription.where("user_id = ? AND course_id = ?", current_user.id, @test.chapter.course.id).first
        if @test.choice == @test.correct_answer
            @test.passed = true
            @subs.chapter_completed += 1
            if @subs.chapter_completed <= @subs.course.chapters.last.order
                redirect_to course_chapter_path(@test.chapter.course, Chapter.find_by(order: @subs.chapter_completed))
            else
                @subs.chapter_completed += 1
                @subs.completed = true
                redirect_to dashboard_path
            end
        else
            redirect_to course_chapter_path(@test.chapter.course,@test.chapter)
            
        end
        @subs.save
        authorize @test
    end
    
end

