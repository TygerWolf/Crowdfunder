class TiersController < ApplicationController
  before_filter :load_project

  def index
    @tiers = Tier.all
  end

  def show
    @tier = Tier.find(params[:id])
  end

  def new
    # @project = Project.find(params[:project_id])
    @tier = Tier.new
  end

  def edit
    @tier = Tier.find(params[:id])
  end

  def create
    # project = Project.find( params[:project_id] )
    # project.tiers.build( tier_params )

    @tier = Tier.new(tier_params)
    @tier.project_id = params[:project_id]

    if @tier.save
      redirect_to @project
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
    params.require(:tier).permit(:name, :description, :price_in_dollars, :created_at, :updated_at)
  end

  def load_project
    @project = Project.find(params[:project_id])
  end

end


