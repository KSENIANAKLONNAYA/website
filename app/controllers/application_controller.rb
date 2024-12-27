class ApplicationController < ActionController::Base
  before_action :redirect_to_registration

  private

  def redirect_to_registration
    redirect_to register_path if request.path == root_path
  end
end
