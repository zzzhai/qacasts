class ApplicationController < ActionController::Base
  protect_from_forgery

  def auth_user
    if user_signed_in?
      if not current_user.wizard
        redirect_to wizard_path
      end
    else
      redirect_to user_omniauth_authorize_path(:google_oauth2)
    end
  end

end
