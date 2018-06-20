class ChartsController < ApplicationController
  def show
  end

  def index
    @orders = Order.all
    @param = params[:bdaymonth]
    if params[:bdaymonth] == ""
      respond_to do |format|
        format.html { redirect_to charts_index_path, notice: "Bạn chưa nhập tháng năm." }
      end
    end
    if @param
      @month = @param.split("-")[1]
      @year = @param.split("-")[0]
      @orders = Order.where("EXTRACT(month FROM created_at) = ? AND EXTRACT(year FROM created_at) = ?", "#{@month}", "#{@year}")
    end
  end
end
