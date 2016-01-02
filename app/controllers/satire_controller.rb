class SatireController < ApplicationController
  require "will_paginate"
  def show
  	@satire = Satire.find params[:id]
  end
  def index
    @satires = Satire.where('date <= ?', Date.today).order(:date).reverse.paginate(:page => params[:page], :per_page => 6)
    @satires_orbit = Satire.where('date <= ?', Date.today).order(:date).reverse.first(3)
  end
end
