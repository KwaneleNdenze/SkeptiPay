class Withdrawal < ApplicationRecord  
  belongs_to :account

  enum status: [:requested, :approved]
  
  after_initialize :set_default_status, :if => :new_record?

    def set_default_status
      self.status ||= :requested
    end

  # validations
  validates_presence_of :amount, :status, :verification_code
end