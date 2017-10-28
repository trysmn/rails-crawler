class PubsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :index, :search, :show, :new, :create]
  after_action :verify_authorized, except: [:home]
  def home
    @cities = City.all
    @minute_intervals = [0,15,30,45]
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
