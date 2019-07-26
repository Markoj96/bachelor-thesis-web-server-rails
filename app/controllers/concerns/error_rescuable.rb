module ErrorRescuable
  extend ActiveSupport::Concern

  included do
    rescue_from ApiError, with: :handle_api_error

    rescue_from ActiveRecord::RecordNotUnique, with: :handle_not_unique_error
  end

  def handle_api_error(error)
    render json: error.to_json, status: error.status
  end

  def handle_not_unique_error(error)
    handle_api_error(ApiError.new('Parameter is not unique!', :bad_request))
  end
end