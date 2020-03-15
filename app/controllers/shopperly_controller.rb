class ShopperlyController < ApplicationController
  skip_before_action :authenticate_users!, :only => [:index]
  def index
  end
end
