class ProductbrandController < ApplicationController
  include CurrentCart
  before_action :set_cart

  def show
    @id = params[:id]
    @gears = Gear.joins("INNER JOIN brands ON gears.brand_id=brands.id AND brands.brandname='#{@id}'")
  end
end
