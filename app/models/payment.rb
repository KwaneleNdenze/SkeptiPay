class Payment < ApplicationRecord
  belongs_to :account
  
  enum status: {requested: 0, approved: 1}

  after_initialize :set_default_status, :if => :new_record?

  def set_default_status
    self.status ||= :requested
  end

  # validations
  validates_presence_of :amount, :description, :status, :verification_code

end