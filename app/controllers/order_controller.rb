class OrderController < ApplicationController
  include CurrentCart
  before_action :set_cart, only: [:new, :create]
  before_action :ensure_cart_isnt_empty, only: :new
  before_action :set_order, only: [:show, :edit, :update, :destroy]

  # GET /order
  # GET /order.json
  def index
    @order = Order.all
  end

  # GET /order/1
  # GET /order/1.json
  def show
  end

  # GET /order/new
  def new
    @order = Order.new
    @countries = Countries.all
  end

  # GET /order/1/edit
  def edit
    @order = Order.new
    @countries = Countries.all
  end

  # POST /order
  # POST /order.json
  def create
    @order = Order.new(order_params)

    respond_to do |format|
      if @order.save
        format.html { redirect_to @order, notice: 'Order was successfully created.' }
        format.json { render :show, status: :created, location: @order }
      else
        format.html { render :new }
        format.json { render json: @order.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /order/1
  # PATCH/PUT /order/1.json
  def update
    respond_to do |format|
      if @order.update(order_params)
        format.html { redirect_to @order, notice: 'Order was successfully updated.' }
        format.json { render :show, status: :ok, location: @order }
      else
        format.html { render :edit }
        format.json { render json: @order.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /order/1
  # DELETE /order/1.json
  def destroy
    @order.destroy
    respond_to do |format|
      format.html { redirect_to order_index_url, notice: 'Order was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_order
      @order = Order.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def order_params
      params.require(:order).permit(:name, :address, :email, :pay_type, :countries_id)
    end
    
    def ensure_cart_isnt_empty
      if @cart.line_item.empty?
        redirect_to shopperly_index_url, notice: 'Your cart is empty'
      end
    end
end
