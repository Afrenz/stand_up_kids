class AgenciesController < ApplicationController
  before_action :set_agency, only: [:show, :edit, :update, :destroy]

  # GET /agencies
  def index
    @agencies = Agency.all
  end

  # GET /agencies/1
  def show
  end

  # GET /agencies/new
  def new
    @agency = Agency.new
  end

  # GET /agencies/1/edit
  def edit
  end

  # POST /agencies
 
  def create
    @agency = Agency.new(agency_params)

  
  end

  # PATCH/PUT /agencies/1
  def update
    
  end

  # DELETE /agencies/1
  def destroy
    @agency.destroy
  
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_agency
      @agency = Agency.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def agency_params
      params.require(:agency).permit(:name, :email, :city, :state)
    end
end
