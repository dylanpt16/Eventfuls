class Api::AnnouncementsController < ApplicationController
  def create
    @announcement = Announcement.new(announcement_params)

    if @announcement.save
      render :show
    else
      render json: @announcement, status: :unprocessable_entity
    end
  end

  private

  def announcement_params
    params.require(:announcement).permit(:content, :group_id, :user_id)
  end
end
