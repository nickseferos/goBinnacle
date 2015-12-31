class PagesController < ApplicationController
  def index
    @satire_last_post = Satire.where('date <= ?', Date.today).last
    @editorial_last_post = Editorial.last
    @other_last_post = Other.last
    @events = Event.where('date >= ?', Date.today).order(:date).limit(3)
  end

  def satire
  end

  def editorial
  end

  def other
  end

  def about
  end

  def write
  end

  def search
  end
end
