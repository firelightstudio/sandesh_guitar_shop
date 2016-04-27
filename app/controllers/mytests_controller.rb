class MytestsController < ApplicationController
  before_action :set_mytest, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @mytests = Mytest.all
    respond_with(@mytests)
  end

  def show
    respond_with(@mytest)
  end

  def new
    @mytest = Mytest.new
    respond_with(@mytest)
  end

  def edit
  end

  def create
    @mytest = Mytest.new(mytest_params)
    @mytest.save
    respond_with(@mytest)
  end

  def update
    @mytest.update(mytest_params)
    respond_with(@mytest)
  end

  def destroy
    @mytest.destroy
    respond_with(@mytest)
  end

  private
    def set_mytest
      @mytest = Mytest.find(params[:id])
    end

    def mytest_params
      params[:mytest]
    end
end
