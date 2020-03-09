class CategoriesController < ApplicationController
  before_action :set_categories, only: [:show, :edit, :update, :destroy]

  # GET /categories
  # GET /categories.json
  def index
    @categories = Categories.all
  end

  # GET /categories/1
  # GET /categories/1.json
  def show
  end

  # GET /categories/new
  def new
    @categories = Categories.new
  end

  # GET /categories/1/edit
  def edit
  end

  # POST /categories
  # POST /categories.json
  def create
    @categories = Categories.new(categories_params)

    respond_to do |format|
      if @categories.save
        format.html { redirect_to @categories, notice: 'Categories was successfully created.' }
        format.json { render :show, status: :created, location: @categories }
      else
        format.html { render :new }
        format.json { render json: @categories.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /categories/1
  # PATCH/PUT /categories/1.json
  def update
    respond_to do |format|
      if @categories.update(categories_params)
        format.html { redirect_to @categories, notice: 'Categories was successfully updated.' }
        format.json { render :show, status: :ok, location: @categories }
      else
        format.html { render :edit }
        format.json { render json: @categories.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /categories/1
  # DELETE /categories/1.json
  def destroy
    @categories.destroy
    respond_to do |format|
      format.html { redirect_to categories_index_url, notice: 'Categories was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_categories
      @categories = Categories.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def categories_params
      params.require(:categories).permit(:name)
    end
end
