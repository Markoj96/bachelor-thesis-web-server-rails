module ErrorRescuable
  extend ActiveSupport::Concern

  included do
    rescue_from ApiError, with: :handle_api_error
  end

  def handle_api_error(error)
    render json: error.to_json, status: error.status
  end
end