class PubsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home, :index, :search, :show, :new, :create]
  after_action :verify_authorized, except: [:home]
  def home
    @cities = City.all
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
