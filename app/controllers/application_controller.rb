class ApplicationController < ActionController::Base
  before_action :basic_auth
  before_action :set_time_zone, if: :user_signed_in?

  private
  def basic_auth
    authenticate_or_request_with_http_basic do |username, password|
      username == ENV["BASIC_AUTH_USER"] && password == ENV["BASIC_AUTH_PASSWORD"]
    end
  end

    def set_time_zone
      Time.zone = current_user.time_zone
    end
end
