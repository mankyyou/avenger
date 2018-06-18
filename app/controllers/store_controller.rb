class StoreController < ApplicationController
  include CurrentCart
  before_action :set_cart

  def index
    @gears = Gear.order(:name)
  end
end
