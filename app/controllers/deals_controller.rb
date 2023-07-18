class DealsController < ApplicationController
  before_action :authenticate_user!
  def index
    @deals = Deal.all
  end
end
