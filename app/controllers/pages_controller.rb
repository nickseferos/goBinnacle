class PagesController < ApplicationController
  def index
    @satire_last_post = Satire.where('date <= ?', Date.today).order(:date).last
    @editorial_last_post = Editorial.where('date <= ?', Date.today).order(:date).last
    @other_last_post = Other.where('date <= ?', Date.today).order(:date).last
    @events = Event.where('date >= ?', Date.today).order(:date).paginate(:page => params[:page], :per_page => 3)
  end

  def about
  end

  def write
  end

  def search
  end
end
