class PagesController < ApplicationController
  def index
    @satire_last_post = Satire.last
    @editorial_last_post = Editorial.last
    @other_last_post = Other.last
    @events = Event.order(:date).limit(3)
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
