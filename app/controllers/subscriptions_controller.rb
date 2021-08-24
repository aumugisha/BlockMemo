class SubscriptionsController < ApplicationController

    def index
        @subscriptions = Subscription.all
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
          @chapter = Chapter.where("course_id = ?", params[:course_id])
          if @subscription.save
            redirect_to subscription_path(@subscription)
            
          else
            render "new"
          end
          else
            redirect_to dashboard_path
        end
        authorize @subscription
        

     
      
    end

    def update
      @subscription =Subscription.find(params[:subscription]) 
      @subscription.chapter_completed += 1
      raise
        redirect_to subscription_path(@subscription)
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
