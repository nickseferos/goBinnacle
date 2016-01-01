class EditorialController < ApplicationController
  def show
  	@editorial = Editorial.find params[:id]
  end
  def index
    @editorial = Editorial.where('date <= ?', Date.today).order(:date)
  end
end
