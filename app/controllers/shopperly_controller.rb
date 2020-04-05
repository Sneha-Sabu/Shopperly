class ShopperlyController < ApplicationController
  skip_before_action :authenticate_users!, :only => [:index]
  def index
    @products = Products.paginate(page: params[:page], per_page: 10).limit('3').order('id ASC')
  end
end
