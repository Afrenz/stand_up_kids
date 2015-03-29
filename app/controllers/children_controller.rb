class ChildrenController < ApplicationController
  # before_action :set_child, only: [:show, :edit, :update, :destroy]

  # GET /children
  def index
    @children = Child.all
  end

  # GET /children/1
  def show
    @active = 'children'
    @child  = Child.find(param[:id].to_i)
  end

  private

    # Never trust parameters from the scary internet, only allow the white list through.
    def child_params
      params.require(:child).permit(:first_name, :last_name, :age, :sex, :bio)
    end
end
