class DealsController < ApplicationController
  before_action :authenticate_user!
  def index
    @deals = Deal.all
  end

  def new
    @deal = Deal.new
    @category = Category.find(params[:category_id])
  end

  def create
    @category = Category.find(params[:category_id])
    @deal = Deal.new(deal_params)
    if @deal.save
      redirect_to category_path(id: @category.id)
    else
      render :new
    end
  end

  private

  def deal_params
    params.require(:deal).permit(:name, :amount, :author_id, category_ids: [])
  end
end
