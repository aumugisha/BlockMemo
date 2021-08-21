class SubscriptionsController < ApplicationController

    def index
        @subscriptions = Subscription.all
    end

    def show
        @subscription = Subscription.find(params[:id]) 
        authorize @subscription
    end

      
    def create
      @subscription = Subscription.new(subscriptions_params)
      @subscription.user = current_user
      @subscription.course = set_course
      authorize @subscription
    
        if @subscription.save
          redirect_to subscriptions_path
        else
          render "new"
        end
    end

    def update
        @subscription.update(subscription_params)
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
