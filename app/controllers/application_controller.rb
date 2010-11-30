class ApplicationController < ActionController::Base
  protect_from_forgery

  rescue_from ActionController::RoutingError, :with => :render_not_found
  rescue_from ActionController::UnknownAction, :with => :render_not_found
  rescue_from ActiveRecord::RecordNotFound, :with => :render_not_found

  protected

  def render_not_found
    render 'site/not_found', :status => :not_found
  end

end
