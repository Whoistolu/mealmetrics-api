class ApplicationController < ActionController::API
    before_action :authenticate_user!
    before_action :set_current_organization


    def set_current_organization
      @current_organization = current_user.organization
    end
end
