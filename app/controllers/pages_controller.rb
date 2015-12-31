class PagesController < ApplicationController
  def index
    @satire_last = Satire.last
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
