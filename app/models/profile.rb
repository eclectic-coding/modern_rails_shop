class Profile < ApplicationRecord
  belongs_to :account, optional: true

  validates_presence_of :name, length: {minimum: 3, maximum: 43 }
end
