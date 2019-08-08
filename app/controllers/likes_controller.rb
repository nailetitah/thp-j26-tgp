class LikesController < ApplicationController

  before_action :find_gossip
  before_action :find_like, only: [:destroy]

  def create
    @gossip.likes.create(user_id: current_user.id)
    redirect_to request.referrer
  end

  def destroy
    @like.destroy
    redirect_to request.referrer  
  end

  private

  def find_like
    @like = @gossip.likes.find(params[:id])
  end

  def find_gossip
    @gossip = Gossip.find(params[:gossip_id])
  end

  def already_liked?
    Like.where(user_id: current_user.id, gossip_id:
    params[:gossip_id]).exists?
  end
end
