class PagesController < ApplicationController
  def index
    @satire_last_post = Satire.where('date <= ?', Date.today).last
    @editorial_last_post = Editorial.where('date <= ?', Date.today).last
    @other_last_post = Other.where('date <= ?', Date.today).last
    @events = Event.where('date >= ?', Date.today).order(:date).limit(3)
  end

  def satire
    @satires = Satire.where('date <= ?', Date.today).order(:date)
  end

  def editorial
    @editorials = Editorial.where('date <= ?', Date.today).order(:date)
  end

  def other
    @others = Other.where('date <= ?', Date.today).order(:date)
  end

  def about
  end

  def write
  end

  def search
  end
end
