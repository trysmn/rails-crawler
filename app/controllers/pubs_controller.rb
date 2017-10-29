class PubsController < ApplicationController
  def home
    @cities = City.all
    @minute_intervals = [0,15,30,45]
    @pubs = Pub.all
  end

  def index
  end

  def new
  end

  def create
  end

  def show
  end
end
