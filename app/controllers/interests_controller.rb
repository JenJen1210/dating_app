class InterestsController < ApplicationController
  before_action :find_interest, only: {:show, :edit, :destroy, :update}

  def index
    @interests = Interest.all
  end

  def show
  end

  def edit
  end

  def update
    if @interest.update(interest_params)
      redirect_to interests_path
    else
      render 'edit'
    end
  end

  def new
    @interest = Interest.new
  end

  def create
    @interest = Interest.new(interst_params)
    if @interest.save
      redirect_to interests_path
    else
      render 'new'
    end
  end

  def destroy
    @interest.destroy
    redirect_to intersts_path
  end

  private

  def interest_params
    params.require(:interest).permit(:name, :description, :user_id)
  end

  def find_interest
    @interest = Interest.find(params[:id])
  end
end
