module LikesHelper
  def find_like
    @like = @gossip.likes.find(params[:id])
  end
end
