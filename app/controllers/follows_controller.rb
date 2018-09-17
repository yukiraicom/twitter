
class FollowsController < ApplicationController
  def create
    # binding.pry
    # follow = Follow.find_by(follow_id: "current_user.id")
    # if follow.
    Follow.create(follow_id: follow_params, user_id: current_user.id)
    #binding.pry
    redirect_to user_path(params.require(:user_id))
    #binding.pry
  end

  def destroy
    #binding.pry
    follow = Follow.find_by(user_id: current_user.id, follow_id: User.find(params[:id]).id)
    follow.destroy
    redirect_to controller: 'users', action: 'show'
  end

  private
  def follow_params 
    params.require(:user_id)
    # binding.pry
  end
end
