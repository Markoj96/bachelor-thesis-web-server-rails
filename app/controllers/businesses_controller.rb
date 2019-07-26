class HousesController < ApplicationController
  before_action :authenticate_user
  before_action :set_business, only: [:show]

  def index
    @businesses = policy_scope(Business)
  end

  def show
    authorize(@business)

    @business
  end

  private

  def set_business
    @business = Business.find(params[:id])
  end
end
