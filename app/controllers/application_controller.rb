class ApplicationController < ActionController::Base
  protect_from_forgery
  helper_method :mobile_device?
  before_filter :prepare_for_mobile
  
  
  private
  def mobile_device?
    request.user_agent =~ /Mobile|webOS|Android/
  end
  
  def prepare_for_mobile
     request.format = :mobile if mobile_device? 
  end
  
end
