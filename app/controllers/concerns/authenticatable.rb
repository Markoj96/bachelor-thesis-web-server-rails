module Authenticatable
  extend ActiveSupport::Concern

  include ActionController::HttpAuthentication::Token::ControllerMethods

  def authenticate_user
    # authenticate_with_http_token is method to read token from reader
    authenticate_with_http_token do |token|
      decoded = JWT.decode(token, Rails.application.credentials.secret_key_base, true, algorithm: 'HS256').first
      @current_user = User.find(decoded['user_id'])
    end

    # raise AuthenticationFailedError if @current_user.nil?
  end

  def current_user
    @current_user
  end
end