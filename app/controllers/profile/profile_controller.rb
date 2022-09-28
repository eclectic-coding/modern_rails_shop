class Profile::ProfileController < ApplicationController
  before_action :authenticate_profile
  before_action :set_profile, only: [:show]

  layout "login_profile"

  def show
    authorize!
  end

  private

  def set_profile
    @profile = Profile.find(current_account.profile[0].id)
  end

  def authenticate_profile
    if !current_account
      redirect_to profile_login_path
    elsif current_account
      rodauth.require_authentication
    end
  end
end
