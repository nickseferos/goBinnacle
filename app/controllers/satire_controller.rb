class SatireController < ApplicationController
  def show
  	@satire = Satire.find params[:id]
  end
  def index
    @satires = Satire.where('date <= ?', Date.today).order(:date)
  end
end
