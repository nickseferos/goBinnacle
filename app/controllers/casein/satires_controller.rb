module Casein
  class SatiresController < Casein::CaseinController
  
    ## optional filters for defining usage according to Casein::AdminUser access_levels
    # before_filter :needs_admin, :except => [:action1, :action2]
    # before_filter :needs_admin_or_current_user, :only => [:action1, :action2]
  
    def index
      @casein_page_title = 'Satires'
  		@satires = Satire.order(sort_order(:title)).paginate :page => params[:page]
    end
  
    def show
      @casein_page_title = 'View satire'
      @satire = Satire.find params[:id]
    end
  
    def new
      @casein_page_title = 'Add a new satire'
    	@satire = Satire.new
    end

    def create
      @satire = Satire.new satire_params
    
      if @satire.save
        flash[:notice] = 'Satire created'
        redirect_to casein_satires_path
      else
        flash.now[:warning] = 'There were problems when trying to create a new satire'
        render :action => :new
      end
    end
  
    def update
      @casein_page_title = 'Update satire'
      
      @satire = Satire.find params[:id]
    
      if @satire.update_attributes satire_params
        flash[:notice] = 'Satire has been updated'
        redirect_to casein_satires_path
      else
        flash.now[:warning] = 'There were problems when trying to update this satire'
        render :action => :show
      end
    end
 
    def destroy
      @satire = Satire.find params[:id]

      @satire.destroy
      flash[:notice] = 'Satire has been deleted'
      redirect_to casein_satires_path
    end
  
    private
      
      def satire_params
        params.require(:satire).permit(:title, :author, :date, :body, :image)
      end

  end
end