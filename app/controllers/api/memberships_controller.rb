class Api::MembershipsController < ApplicationController
  def index
    @memberships = Membership.all
  end

  def create
    @membership = Membership.new(membership_params)
    @membership.user_id = current_user.id
    if @membership.save
      @group = @membership.group
      render 'api/groups/show'
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
    @group = Group.find(params[:membership][:group_id])
    render 'api/groups/show'
  end

  private

  def membership_params
    params.require(:membership).permit(
      :group_id
    )
  end
end
