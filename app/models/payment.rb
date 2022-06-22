class Payment < ApplicationRecord
  belongs_to :user
  # validations
  validates_presence_of :amount, :description, :status, :verification_code

end