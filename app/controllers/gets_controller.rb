class GetsController < ApplicationController
  before_action :authenticate_user!, only: [:new, :edit]
  def new
    @get = Get.new
  end

  def create
    @get = Get.new(get_params)
    if @get.save
      redirect_to root_path
    else
      render :new
    end

    private
    def get_params
      params.require(:get).permit(:salalry).merge(user_id: current_user.id)
    end
end
