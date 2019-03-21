class Api::EventsController < ApplicationController
  before_action :require_logged_in, only: [:create]

  def create
    @event = Event.new(event_params)

    if @event.save
      render :show
    else
      if (@event.errors.messages.delete :lat) && (@event.errors.messages.delete :lng)
        @event.errors.messages[:location] = ["can't be blank"]
      end
      @event.errors.messages.delete :picture_url if @event.errors.messages[:picture]
      render json: @event.errors.full_messages, status: 422
    end
  end

  def show
    @event = Event.find(params[:id])
  end

  def index
    @events = Event.all
  end

  private

  def event_params
    params.require(:event).permit(
      :name,
      :description,
      :owner_id,
      :lat,
      :lng,
      :picture_url
    )
  end
end
