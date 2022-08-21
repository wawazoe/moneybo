class GivesController < ApplicationController
before_action :authenticate_user!, only: [:index, :new, :edit]
#before_action :give_set, only: [:new]

  def index
    @give = Give.all
  end

  def new
    @give = Give.new
  end

  def edit
    #@give = Give.all(give_params)
  end

  private
  def give_params
    params.require(:give).permit(:clothing_out_id, :food_out_id, :live_out_id, :fixed_cost_id).merge(user_id: current_user.id)
  end

  def give_set
    @give = Give.find(params[:id])
  end
end