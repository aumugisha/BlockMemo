class SubscriptionsController < ApplicationController

    def index
        @courses = Course.all.sample(3)
        @subscriptions = Subscription.where("user_id = ?", current_user.id)
        @subscription = Subscription.new()
    end

    def show
        @subscription = Subscription.find(params[:id]) 
        authorize @subscription
    end

      
    def create
        @subscription = Subscription.where("user_id = ? AND course_id = ?", current_user.id, params[:subscription][:course_id])
        if Subscription.where("user_id = ? AND course_id = ?", current_user.id, params[:subscription][:course_id]).empty?
          @subscription = Subscription.new(subscriptions_params)
          @subscription.user = current_user
          @subscription.course = set_course
          @chapter = @course.chapters.first  
          if @subscription.save
            redirect_to course_chapter_path(@course,@chapter)
          else
            redirect_to dashboard_path
          end
          else
            redirect_to dashboard_path
        end
        authorize @subscription
        

     
      
    end

    def update
      @subscription =Subscription.find(params[:id]) # @subscription.update(chapter_complet:"value" )
      if @subscription.chapter_completed < @subscription.course.chapters.last.order
        @subscription.chapter_completed += 1
        @subscription.save
        redirect_to course_chapter_path(@subscription.course, @subscription.course.chapters.find_by(order:@subscription.chapter_completed ))
      else
        redirect_to dashboard_path
      end


      authorize @subscription

      end
    
  
      def destroy
        set_subscription
        @subscription.destroy
        redirect_to subscriptions_path
      end
    
        private
        def subscriptions_params
          params.require(:subscription).permit(:course_id)
        end

        def set_subscription
            @subscription =Subscription.find(params[:id]) 
        end
      
        def set_course
          @course =Course.find(params[:subscription][:course_id])  
        end


end
