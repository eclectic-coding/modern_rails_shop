class Profile::ProfilePolicy < ApplicationPolicy
  # See https://actionpolicy.evilmartians.io/#/writing_policies

  def show?
    account.role == "customer"
  end
end
