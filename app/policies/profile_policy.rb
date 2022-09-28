module Profile
  class ProfilePolicy < ApplicationPolicy
    def show?
      account.role == "customer"
    end
  end
end
