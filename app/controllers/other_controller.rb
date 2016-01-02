class OtherController < ApplicationController
  def show
  	@other = Other.find params[:id]
  end
  def index
    @others = Other.where('date <= ?', Date.today).order(:date).reverse.paginate(:page => params[:page], :per_page => 6)
  end
end
