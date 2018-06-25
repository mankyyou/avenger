class ApplicationController < ActionController::Base
  def index
    @types = Type.all
    @brands = Brand.all
  end
end
