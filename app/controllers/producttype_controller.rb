class ProducttypeController < ApplicationController
  include CurrentCart
  before_action :set_cart

  def show
    @id = params[:id]
    @gears = Gear.joins("INNER JOIN types ON gears.type_id=types.id AND types.typename='#{@id}'")
  end
end
