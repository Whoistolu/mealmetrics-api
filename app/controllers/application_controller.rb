class ApplicationController < ActionController::API
    include Pundit
    before_action :authenticate_user!
    before_action :set_current_organization


    def set_current_organization
      @current_organization = current_user.organization
    end

    rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized

    private

    def user_not_authorized(exception)
        render json: { error: "You are not authorized to perform this action." }, status: :forbidden
    end
end
