class Api::MembershipsController < ApplicationController
  def index
    @memberships = Membership.where(group_id: params[:group_id])
  end

  def create
    @membership = Membership.new(membership_params)
    @membership.user_id = current_user.id
    if @membership.save
      render :show
    else
      render json: @membership, status: :unprocessable_entity
    end
  end

  def destroy
    @membership = Membership.find_by(
      user_id: current_user.id,
      group_id: params[:membership][:group_id]
    )
    @membership.destroy
    @memberships = Membership.where(group_id: params[:membership][:group_id])
    render :index
  end

  private

  def membership_params
    params.require(:membership).permit(
      :group_id
    )
  end
end
