class EditorialController < ApplicationController
  def show
  	@editorial = Editorial.find params[:id]
  end
  def index
    @editorials = Editorial.where('date <= ?', Date.today).order(:date).reverse.paginate(:page => params[:page], :per_page => 6)
  end
end
