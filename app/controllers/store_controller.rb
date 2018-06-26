class StoreController < ApplicationController
  include CurrentCart
  before_action :set_cart

  def index
    @types = Type.all
    @brands = Brand.all
    if params[:query].present?
      @gears = Gear.search_name(params[:query]).paginate(page: params[:page], per_page: 7)
    else
      @gears = Gear.all.paginate(page: params[:page], per_page: 7)
    end
  end
end
