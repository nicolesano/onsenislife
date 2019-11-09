class OnsensController < ApplicationController
  def index
    @onsens = Onsen.all
  end

  def show
    @onsen = Onsen.find(params[:id])
  end

  def new
    @onsen = Onsen.new
  end

  def create
    @onsen = Onsen.new(onsen_params)
    if @onsen.save
      redirect_to onsen_path(@onsen)
    else
      render :new
    end
  end

  private

  def onsen_params
    params.require(:onsen).permit(:name, :address)
  end
end
