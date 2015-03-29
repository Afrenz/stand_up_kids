class ChildrenController < ApplicationController
  before_action :set_child, only: [:show, :edit, :update, :destroy]

  # GET /children
  def index
    @children = Child.all
  end

  # GET /children/1
  def show
  end

  # GET /children/new
  def new
    @child = Child.new
  end

  # GET /children/1/edit
  def edit
  end

  # POST /children
  def create
    @child = Child.new(child_params)
  end

  # PATCH/PUT /children/1
  # PATCH/PUT /children/1.json
  def update
  end

  # DELETE /children/1
  # DELETE /children/1.json
  def destroy
    @child.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_child
      @child = Child.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def child_params
      params.require(:child).permit(:first_name, :last_name, :age, :sex, :bio)
    end
end
