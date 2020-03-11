class CountriesController < ApplicationController
  before_action :set_countries, only: [:show, :edit, :update, :destroy]

  # GET /countries
  # GET /countries.json
  def index
    @countries = Countries.all
  end

  # GET /countries/1
  # GET /countries/1.json
  def show
  end

  # GET /countries/new
  def new
    @countries = Countries.new
  end

  # GET /countries/1/edit
  def edit
  end

  # POST /countries
  # POST /countries.json
  def create
    @countries = Countries.new(countries_params)

    respond_to do |format|
      if @countries.save
        format.html { redirect_to @countries, notice: 'Countries was successfully created.' }
        format.json { render :show, status: :created, location: @countries }
      else
        format.html { render :new }
        format.json { render json: @countries.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /countries/1
  # PATCH/PUT /countries/1.json
  def update
    respond_to do |format|
      if @countries.update(countries_params)
        format.html { redirect_to @countries, notice: 'Countries was successfully updated.' }
        format.json { render :show, status: :ok, location: @countries }
      else
        format.html { render :edit }
        format.json { render json: @countries.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /countries/1
  # DELETE /countries/1.json
  def destroy
    @countries.destroy
    respond_to do |format|
      format.html { redirect_to countries_index_url, notice: 'Countries was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_countries
      @countries = Countries.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def countries_params
      params.require(:countries).permit(:name, :latitude, :longitude)
    end
end
