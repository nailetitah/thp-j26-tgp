class GossipsController < ApplicationController

  def new
    @gossip = Gossip.new
  end

  def create
    @gossip = Gossip.new(gossip_params)

    if @gossip.save
      flash[:success] = "Le potin a été ajouté."
      redirect_to root_path
    else
      render 'new'
    end
  end

  def index
    @gossips = Gossip.all
  end

  def show
    @gossip = Gossip.find(params[:id])
    @gossip_date = @gossip.created_at.strftime("%d.%m.%Y")
  end

  def edit
    @gossip = Gossip.find(params[:id])
  end

  def update
   @gossip = Gossip.find(params[:id])
   if @gossip.update(gossip_params)
      flash[:success] = "Le potin a été modifié."
      redirect_to @gossip
    else
      render 'edit'
    end
  end

  def destroy
    @gossip = Gossip.find(params[:id])
    @gossip.destroy
    flash[:success] = "Le potin a été supprimé."
    redirect_to root_path
  end

  private

  def gossip_params
    params.require(:gossip).permit(:title, :content, :user_id)
  end

end
