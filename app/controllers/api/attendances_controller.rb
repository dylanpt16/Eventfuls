class Api::AttendancesController < ApplicationController
  def index
    @attendances = Attendance.where(event_id: params[:event_id])
  end

  def create
    @attendance = Attendance.new(attendance_params)
    @attendance.user_id = current_user.id
    if @attendance.save
      render :show
    else
      render json: @attendance, status: :unprocessable_entity
    end
  end

  def destroy
    @attendance = Attendance.find_by(
      user_id: current_user.id,
      event_id: params[:attendance][:event_id]
    )
    @attendance.destroy
    @attendances = Attendance.where(event_id: params[:attendance][:event_id])
    render :index
  end

  private

  def attendance_params
    params.require(:attendance).permit(
      :event_id
    )
  end
end
