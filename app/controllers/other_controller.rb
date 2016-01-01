class OtherController < ApplicationController
  def show
  	@other = Other.find params[:id]
  end
  def index
    @other = Other.where('date <= ?', Date.today).order(:date)
  end
end
