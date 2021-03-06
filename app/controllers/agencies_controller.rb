class AgenciesController < ApplicationController

  # GET /agencies
  def index
    @agencies = Agency.all
    @search = params[:search]
    if @search && @search.length > 0
      else
        @agencies = Agency.all
      end
    end

  # GET /agencies/1
  def show
    @active = 'agencies'
    @agency = Agency.find(param[:id.to_i])
  end

  private

    # Never trust parameters from the scary internet, only allow the white list through.
    def agency_params
      params.require(:agency).permit(:name, :email, :city, :state)
    end
  end
  

