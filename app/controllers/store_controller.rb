class StoreController < ApplicationController
  skip_before_action :authorize
  include CurrentCart
  before_action :set_cart

  def index
    if params[:query].present?
      @gears = Gear.search_name(params[:query]).paginate(page: params[:page], per_page: 4)
    else
      @gears = Gear.all.paginate(page: params[:page], per_page: 4)
    end
  end
end
