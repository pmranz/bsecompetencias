class ApplicationController < ActionController::Base
  helper :all
  protect_from_forgery
  before_filter :authorize

  def authorize
    Authorization.current_user = current_user
  end

#  filter_access_to :all
end
