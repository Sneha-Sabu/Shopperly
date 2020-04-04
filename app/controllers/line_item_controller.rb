class LineItemController < ApplicationController
  include CurrentCart
  before_action :set_line_item, only: [:show, :edit, :update, :destroy]
  before_action :set_cart, only: [:create]

  # GET /line_item
  # GET /line_item.json
  def index
    @line_item = LineItem.all
  end

  # GET /line_item/1
  # GET /line_item/1.json
  def show
  end

  # GET /line_item/new
  def new
    @line_item = LineItem.new
  end

  # GET /line_item/1/edit
  def edit
  end

  # POST /line_item
  # POST /line_item.json
  def create
    @products = Products.find(params[:products_id])
    @line_item = @cart.add_products(@products)

    respond_to do |format|
      if @line_item.save
        format.html { redirect_to @line_item.cart, notice: 'Line item was successfully created.' }
        format.json { render :show, status: :created, location: @line_item }
      else
        format.html { render :new }
        format.json { render json: @line_item.errors, status: :unprocessable_entity }
      end
    end
  end
  
  # PATCH/PUT /line_item/1
  # PATCH/PUT /line_item/1.json
  def update
    respond_to do |format|
      if @line_item.update(line_item_params)
        format.html { redirect_to @line_item, notice: 'Line item was successfully updated.' }
        format.json { render :show, status: :ok, location: @line_item }
      else
        format.html { render :edit }
        format.json { render json: @line_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /line_item/1
  # DELETE /line_item/1.json
  def destroy
    @cart = Cart.find(session[:cart_id])
    @line_item.destroy
    respond_to do |format|
      format.html { redirect_to cart_path(@cart), notice: 'Item successfully removed.' }
      format.json { head :no_content }
    end
  end
 
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_line_item
      @line_item = LineItem.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def line_item_params
      params.require(:line_item).permit(:products_id)
    end
end
