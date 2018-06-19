class ApplicationController < ActionController::Base
  before_action :authorize

  protected

  def authorize
    unless User.find_by(id: session[:user_id])
      redirect_to login_url, notice: "Please log in"
    end
  end

  def index
    if params[:query].present?
      @gears = Gear.search_name(params[:query]).paginate(page: params[:page], per_page: 4)
    else
      @gears = Gear.all.paginate(page: params[:page], per_page: 4)
    end
  end
end
