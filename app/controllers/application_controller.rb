class ApplicationController < ActionController::Base
  helper :all
  protect_from_forgery
  before_filter { |c| Authorization.current_user = c.current_user }
#  filter_access_to :all
end
