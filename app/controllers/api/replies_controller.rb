class Api::RepliesController < ApplicationController
  def create
    @reply = Reply.new(reply_params)
    @reply.user_id = current_user.id

    if @reply.save
      @announcement = @reply.announcement
      render 'api/announcements/show'
    else
      render json: @reply, status: :unprocessable_entity
    end
  end

  private

  def reply_params
    params.require(:reply).permit(
      :announcement_id,
      :content
    )
  end
end
