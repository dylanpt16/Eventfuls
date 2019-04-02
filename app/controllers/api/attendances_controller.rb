class Api::AttendancesController < ApplicationController
  def index
    @attendances = Attendance.all
  end

  def create
    @attendance = Attendance.new
    @attendance.user_id = current_user.id
    @attendance.event_id = params[:event_id]
    if @attendance.save
      @event = @attendance.event
      render 'api/events/show'
    end
  end

  def destroy
    @attendance = Attendance.find_by(
      user_id: current_user.id,
      event_id: params[:event_id]
    )
    @attendance.destroy
    @event = Event.find(params[:event_id])
    render 'api/events/show'
  end
end
