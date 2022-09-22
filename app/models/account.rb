class Account < ApplicationRecord
  include Rodauth::Rails.model
  # enum :status, unverified: 1, verified: 2, closed: 3

  ROLE = {
    admin: "admin",
    customer: "customer"
  }

  has_many :profile, dependent: :destroy
  accepts_nested_attributes_for :profile

end
