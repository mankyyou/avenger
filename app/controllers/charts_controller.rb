class ChartsController < ApplicationController
  def show
  end

  def index
    # @param = params[:bdaymonth]
    # begin
    #   @month = @param.split("-")[1]
    #   @year = @param.split("-")[0]
    #   @orders = Order.where("EXTRACT(month FROM created_at) = ? AND EXTRACT(year FROM created_at) = ?", "#{@month}", "#{@year}")
    # rescue => exception
    #   respond_to do |format|
    #     format.html { redirect_to charts_index_path, notice: "Gear was successfully created." }
    #   end
    # end

    if @param
      @month = @param.split("-")[1]
      @year = @param.split("-")[0]
      @orders = Order.where("EXTRACT(month FROM created_at) = ? AND EXTRACT(year FROM created_at) = ?", "#{@month}", "#{@year}")
      # elsif @param === nil
    # elsif @param.empty? === true
    #   respond_to do |format|
    #     format.html { redirect_to charts_index_path, notice: "Gear was successfully created." }
    #   end
    # end
  end
end
