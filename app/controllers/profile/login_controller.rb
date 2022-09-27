class Profile::LoginController < ApplicationController
  skip_verify_authorized

  layout "profile"

  def show
  end
end
