class ProductsController < ApplicationController
  
  before_action :set_products, only: [:show, :edit, :update, :destroy]
  rescue_from ActiveRecord::RecordNotFound, with: :redirect_if_products_not_found
  # GET /products
  # GET /products.json
  def index
    @products = Products.search(params[:term]).paginate(page: params[:page], per_page: 10).order('id ASC')
   
  end

  # GET /products/1
  # GET /products/1.json
  def show
  end

  # GET /products/new
  def new
    @categories = Categories.all
    @products = current_user.products.build
  end

  # GET /products/1/edit
  def edit
    @categories = Categories.all
  end

  # POST /products
  # POST /products.json
  def create
    @products = current_user.products.build(products_params)

    respond_to do |format|
      if @products.save
        format.html { redirect_to @products, notice: 'Products was successfully created.' }
        format.json { render :show, status: :created, location: @products }
      else
        format.html { render :new }
        format.json { render json: @products.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /products/1
  # PATCH/PUT /products/1.json
  def update
    respond_to do |format|
      if @products.update(products_params)
        format.html { redirect_to @products, notice: 'Products was successfully updated.' }
        format.json { render :show, status: :ok, location: @products }
      else
        format.html { render :edit }
        format.json { render json: @products.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /products/1
  # DELETE /products/1.json
  def destroy
    @products.destroy
    respond_to do |format|
      format.html { redirect_to products_index_url, notice: 'Products was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_products
      @products = Products.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def products_params
      params.require(:products).permit(:name, :description, :image, :price, :brand, :categories_id, :term)
    end
end
