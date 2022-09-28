class Profile < ApplicationRecord
  belongs_to :account, optional: true

  validates :name, presence: { length: { minimum: 3, maximum: 43 } }
end
