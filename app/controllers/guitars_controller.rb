class GuitarsController < ApplicationController
  before_action :set_guitar, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @guitars = Guitar.all
    respond_with(@guitars)
  end

  def show
    respond_with(@guitar)
  end

  def new
    @guitar = Guitar.new
    respond_with(@guitar)
  end

  def edit
  end

  def create
    @guitar = Guitar.new(guitar_params)
    @guitar.save
    respond_with(@guitar)
  end

  def update
    @guitar.update(guitar_params)
    respond_with(@guitar)
  end

  def destroy
    @guitar.destroy
    respond_with(@guitar)
  end

  private
    def set_guitar
      @guitar = Guitar.find(params[:id])
    end

    def guitar_params
      params[:guitar].permit(:name, :make, :color, :mrp)
    end
end
