class ApplicationController < ActionController::API
  after_filter :set_access_control_headers
  skip_before_action :verify_authenticity_token
  include Monban::ControllerHelpers

  def set_access_control_headers
    headers['Access-Control-Allow-Origin'] = '*'
    headers['Access-Control-Request-Method'] = '*'
  end
end
