class OnsensController < ApplicationController
  before_action :set_onsen, only: [:show, :edit, :update, :destroy]

  def index
    @onsens = Onsen.all.sort_by &:name
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

  def edit
  end

  def update
    if @onsen.update(onsen_params)
      redirect_to onsen_path(@onsen)
    else
      render :edit
    end
  end

  def destroy
    @onsen.destroy
    redirect_to onsens_path
  end

  private

  def onsen_params
    params.require(:onsen).permit(:name, :address, :photo, :rating, :description)
  end

  def set_onsen
    @onsen = Onsen.find(params[:id])
  end
end
