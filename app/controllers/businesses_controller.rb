class BusinessesController < ApplicationController
  
    def index
       @businesses = Business.all # paginate(page: params[:page]) 
    end
    
    def show
        @business = Business.find(params[:id])
        # redirect_to root_url and return unless @business.activated?
        # @microposts = @business.microposts.paginate(page: params[:page])
    end

    def new
        @business = Business.new
    end

    def create
        @business = Business.new(business_params)    # Not the final implementation!
        @business.save
    end

    def edit
        @business = Business.find(params[:id])
    end

    def update
        @business = Business.find(params[:id])
        if @business.update_attributes(business_params)
            flash[:success] = "Profile updated"
            redirect_to @business
        else
            render 'edit'
        end
    end

    def destroy
        Business.find(params[:id]).destroy
        flash[:success] = "business deleted"
        redirect_to businesses_url
    end
  
private
  
    def business_params
      params.require(:business).permit(:id, :name,:address1, :address2, :city, :state, :zip, :phone, :email, :category, :fee, :website, :owner_name, :owner_phone, :owner_email, :service_product, :receive_email)
    end
    
end
