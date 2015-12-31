class SatireController < ApplicationController
  def show
  	@satire = Satire.find_by_slug!(params[:id])
  end
  def index
    @satires = Satire.where('date <= ?', Date.today).order(:date)
  end
end
