class AdminPolicy < ApplicationPolicy

  def index?
    account.role == 'admin'
  end

end