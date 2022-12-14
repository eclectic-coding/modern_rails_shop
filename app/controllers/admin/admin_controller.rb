class Admin::AdminController < ApplicationController
  before_action :authenticate

  authorize :account, through: :current_account

  layout "admin"

  def index
  end

  private

  def authenticate
    rodauth.require_authentication
  end
end
