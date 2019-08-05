class GossipsController < ApplicationController
  def show
    @gossip = Gossip.find(params[:id])
    @gossip_date = @gossip.created_at.strftime("%d.%m.%Y")
  end
end
