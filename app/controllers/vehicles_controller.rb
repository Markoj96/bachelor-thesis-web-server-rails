class VehiclesController < ApplicationController
  before_action :authenticate_user
  before_action :set_vehicle, only: [:show]

  def index
    @vehicles = policy_scope(Vehicle)
  end

  def show
    authorize(@vehicle)

    @vehicle
  end

  private

  def set_vehicle
    @vehicle = Vehicle.find(params[:id])
  end
end
