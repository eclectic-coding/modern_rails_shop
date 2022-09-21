class Account < ApplicationRecord
  include Rodauth::Rails.model
  enum :status, unverified: 1, verified: 2, closed: 3

  ROLE = {
    admin: "admin",
    customer: "customer"
  }

  has_many :profile
end
