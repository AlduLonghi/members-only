class ApplicationController < ActionController::Base

    private

    def new_user_params
      params.require(:user).permit(:email, :password, :password_confirmation)
    end
end
