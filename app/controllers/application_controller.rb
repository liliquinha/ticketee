class ApplicationController < ActionController::Base
  protect_from_forgery
  
  private
    def authorize_admin!
      authenticate_user! #provided by Devise - if the user isnt signed in when this method is called, they
                          #are asked to sign in
      unless current_user.admin?
        flash[:alert] = "You must be an admin to do that."
        redirect_to root_path
      end
    end
end
