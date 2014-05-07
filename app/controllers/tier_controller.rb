class TierController < ApplicationController

  def index
    @tiers = Tiers.all
  end

  def show
    @tiers = Tiers.find(params[:id])
  end

  def new
    @tier = Tier.new
  end

  def edit
    @Tier = Tier.find(params[:id])
  end

  def create
    @Tier = Tier.new(project_params)

    if @tier.save
      redirect_to tiers_url
    else
      render :new
    end
  end

  def update
    @tier = Tier.find(params[:id])

    if @tier.update_attributes(tier_params)
      redirect_to tier_path(@tier)
    else
      render :edit
    end
  end

  def destroy
    @tier = Tier.find(params[:id])
    @tier.destroy
    redirect_to tier_path
  end

  private
  def tier_params
    params.require(:tier).permit (:name, :description, :price_in_dollars, :project_id, :created_at, :updated_at)
  end

end


