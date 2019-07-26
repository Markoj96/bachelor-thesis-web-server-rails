class HousesController < ApplicationController
  before_action :authenticate_user
  before_action :set_house, only: [:show]

  def index
    @houses = policy_scope(House)
  end

  def show
    authorize(@house)

    @house
  end

  private

  def set_house
    @house = House.find(params[:id])
  end
end
