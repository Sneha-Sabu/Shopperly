class CustomersController < ApplicationController
  before_action :set_customers, only: [:show, :edit, :update, :destroy]

  # GET /customers
  # GET /customers.json
  def index
    @customers = Customers.all
  end

  # GET /customers/1
  # GET /customers/1.json
  def show
  end

  # GET /customers/new
  def new
    @customers = Customers.new
    @countries = Countries.all
  end

  # GET /customers/1/edit
  def edit
    @countries = Countries.all
  end

  # POST /customers
  # POST /customers.json
  def create
    @customers = Customers.new(customers_params)

    respond_to do |format|
      if @customers.save
        format.html { redirect_to @customers, notice: 'Customers was successfully created.' }
        format.json { render :show, status: :created, location: @customers }
      else
        format.html { render :new }
        format.json { render json: @customers.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /customers/1
  # PATCH/PUT /customers/1.json
  def update
    respond_to do |format|
      if @customers.update(customers_params)
        format.html { redirect_to @customers, notice: 'Customers was successfully updated.' }
        format.json { render :show, status: :ok, location: @customers }
      else
        format.html { render :edit }
        format.json { render json: @customers.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /customers/1
  # DELETE /customers/1.json
  def destroy
    @customers.destroy
    respond_to do |format|
      format.html { redirect_to customers_index_url, notice: 'Customers was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_customers
      @customers = Customers.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def customers_params
      params.require(:customers).permit(:name, :email, :password, :password_confirmation, :address, :countries_id)
    end
end
