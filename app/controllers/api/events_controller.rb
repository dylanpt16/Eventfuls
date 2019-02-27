class Api::EventsController < ApplicationController
  before_action :require_logged_in, only: [:create]

  def create
    @event = Event.create!(event_params)
    render :show
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
    )
  end
end
