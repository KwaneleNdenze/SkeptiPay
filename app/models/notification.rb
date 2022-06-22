class Notification < ApplicationRecord
  belongs_to :account

  enum status: [:unread, :read]

    after_initialize :set_default_status, :if => :new_record?

    def set_default_status
      self.status ||= :unread
    end

  # validations
  validates_presence_of :recipient, :subject, :body, :status
end