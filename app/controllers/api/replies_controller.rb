class Api::RepliesController < ApplicationController
  def create
    @reply = Reply.new(reply_params)
    @reply.user_id = current_user.id

    if @reply.save
      render :show
    else
      render json: @reply, status: :unprocessable_entity
    end
  end

  def index
    @replies = Reply.where(announcement_id: postId)
  end

  private

  def reply_params
    params.require(:reply).permit(
      :announcement_id,
      :content
    )
  end

  def postId
    params[:announcement_id]
  end
end
