class Api::GroupsController < ApplicationController
  before_action :require_logged_in, only: [:create]

  def create
    @group = Group.create!(group_params)
    render :show
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
      :host_id,
      :lat,
      :lng
    )
  end

end
