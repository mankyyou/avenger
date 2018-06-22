class StoreController < ApplicationController
  include CurrentCart
  before_action :set_cart

  def index
    if params[:query].present?
      @gears = Gear.search_name(params[:query]).paginate(page: params[:page], per_page: 7)
    else
      @gears = Gear.all.paginate(page: params[:page], per_page: 7)
    end
    if current_chipu
      if current_chipu.admin == true
        redirect_to rails_admin_path
      end
    end
  end
end
