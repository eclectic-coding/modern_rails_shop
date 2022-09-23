# Base class for application policies
class ApplicationPolicy < ActionPolicy::Base
  # Read more about authorization context: https://actionpolicy.evilmartians.io/#/authorization_context
  authorization_targets.delete(:user)
  authorize :account, optional: true
end
