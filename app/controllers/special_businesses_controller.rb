class SpecialBusinessesController < ApplicationController
  before_action :authenticate_user
  before_action :set_special_business, only: [:show]

  def index
    @special_businesses = policy_scope(SpecialBusiness)
  end

  def show
    authorize(@special_business)

    @special_business
  end

  private

  def set_special_business
    @special_business = SpecialBusiness.find(params[:id])
  end
end
