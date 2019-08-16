class EventsController < ApplicationController
	before_action :authenticate_user!, only: [:new, :create, :show]

  def index

  end

  def new

    @event = Event.new
  	
  end

  def create

    @event = Event.new(event_params)
    @event.administrator = current_user
    @event.save
    
      if @event.save
        redirect_to event_path(@event.id)
      else
        flash.now[:danger] = "Couldn't save."
        render action: "new"
      end
  	
  end

  def show

    @id = params[:id]
    @event = Event.all.find(@id)
    @attendance = Attendance.find_by(event_id: @event.id, participant_id: current_user.id)
  	
  end

end




private 



def event_params

params.require(:event).permit(:start_date, :duration, :title, :description, :price, :location)
  
end
