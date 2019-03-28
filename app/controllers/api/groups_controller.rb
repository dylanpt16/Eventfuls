class Api::GroupsController < ApplicationController
  before_action :require_logged_in, only: [:create]

  def create
    @group = Group.new(group_params)

    if !@group.save
      if (@group.errors.messages.delete :lat) && (@group.errors.messages.delete :lng)
        @group.errors.messages[:location] = ["can't be blank"]
      end
      @group.errors.messages.delete :picture_url if @group.errors.messages[:picture]
      render json: @group.errors.full_messages, status: 422
    end
  end

  def show
    @group = Group.find(params[:id])
  end

  def index
    @groups = Group.all
  end

  private

  def group_params
    params.require(:group).permit(
      :name,
      :description,
      :owner_id,
      :lat,
      :lng,
      :picture_url
    )
  end

end
