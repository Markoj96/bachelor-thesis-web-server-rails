class ApplicationController < ActionController::API
  include Pundit
  include ErrorRescuable
  include Authenticatable
end
