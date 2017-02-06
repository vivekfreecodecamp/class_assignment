class ComapaniesController < ApplicationController
  before_action :set_comapany, only: [:show, :edit, :update, :destroy]

  # GET /comapanies
  # GET /comapanies.json
  def index
    @comapanies = Comapany.all
  end

  # GET /comapanies/1
  # GET /comapanies/1.json
  def show
  end

  # GET /comapanies/new
  def new
    @comapany = Comapany.new
  end

  # GET /comapanies/1/edit
  def edit
  end

  # POST /comapanies
  # POST /comapanies.json
  def create
    @comapany = Comapany.new(comapany_params)

    respond_to do |format|
      if @comapany.save
        format.html { redirect_to @comapany, notice: 'Comapany was successfully created.' }
        format.json { render :show, status: :created, location: @comapany }
      else
        format.html { render :new }
        format.json { render json: @comapany.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /comapanies/1
  # PATCH/PUT /comapanies/1.json
  def update
    respond_to do |format|
      if @comapany.update(comapany_params)
        format.html { redirect_to @comapany, notice: 'Comapany was successfully updated.' }
        format.json { render :show, status: :ok, location: @comapany }
      else
        format.html { render :edit }
        format.json { render json: @comapany.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /comapanies/1
  # DELETE /comapanies/1.json
  def destroy
    @comapany.destroy
    respond_to do |format|
      format.html { redirect_to comapanies_url, notice: 'Comapany was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_comapany
      @comapany = Comapany.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def comapany_params
      params.require(:comapany).permit(:name, :established, :intger)
    end
end
