class Profile::LoginController < ApplicationController
  skip_verify_authorized

  layout "login_profile"

  def show
  end
end
