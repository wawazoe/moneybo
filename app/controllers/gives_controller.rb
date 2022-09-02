class GivesController < ApplicationController
before_action :authenticate_user!, only: [:index, :new, :edit, :create]
#before_action :give_set, only: [:new, :create]

  def index
    @gives = Give.all
    @gets = Get.all
  end

  def new
    @give = Give.new
  end

  def edit
    # @give = Give.all(give_params)
     unless current_user
       redirect_to root_path
     end
  end
  
  def create
    @give = Give.new(give_params)
    if @give.save
      redirect_to root_path
    else
      render :new
    end
  end

  private
  def give_params
    params.require(:give).permit(:clothing_out, :food_out, :live_out, :fixed_cost).merge(user_id: current_user.id)
  end

  def give_set
    @give = Give.find(params[:id])
  end
end