class FollowsController < ApplicationController
  def create
    # binding.pry
    # follow = Follow.find_by(follow_id: "current_user.id")
    # if follow.
    Follow.create(user_id: follow_params, follow_id: current_user.id)
    # binding.pry

  end

  private
  def follow_params
    params.require(:user_id)
    # binding.pry
  end
end
