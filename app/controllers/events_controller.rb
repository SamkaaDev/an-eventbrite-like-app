class EventsController < ApplicationController
	before_action :authenticate_user!, only: [:index, :new, :create]

  def index
  end

  def new
  	
  end

  def create
  	
  end

end
