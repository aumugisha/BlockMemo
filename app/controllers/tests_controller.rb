class TestsController < ApplicationController

    def show
        tests = Test.where("chapter_id = ?", params[:chapter_id] )
        @test = tests.sample
        authorize @test
    end

    def update

        @test = Test.find(params[:id])
        @test.choice = params[:test][:choice]
        if @test.choice == @test.correct_answer
            @test.passed = true
            subs = Subscription.where("user_id = ? AND course_id = ?", current_user.id, @test.chapter.course.id).first
            redirect_to subscription_path(subs.id), method: :PATCH
        else
            redirect_to course_chapter_path(@test.chapter.course,@test.chapter)
        end
        authorize @test
    end


end
