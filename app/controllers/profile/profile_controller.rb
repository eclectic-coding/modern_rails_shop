class Profile::ProfileController < ActionController::Base
  before_action :authenticate
  before_action :set_profile, only: [:show]

  layout "profile"

  def show
  end

  private

  def set_profile
    @profile = Profile.find(current_account.profile[0].id)
  end

  def authenticate
    rodauth.require_authentication
  end

end
