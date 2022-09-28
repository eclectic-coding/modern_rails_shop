class Profile::ProfileController < ApplicationController
  before_action :authenticate
  before_action :set_profile, only: [:show]

  layout "login_profile"

  def show
  end

  private

  def set_profile
    @profile = Profile.find(current_account.profile[0].id)
  end

  def authenticate
    if !current_account
      redirect_to profile_login_path
    else
      rodauth.require_authentication
    end
  end
end
