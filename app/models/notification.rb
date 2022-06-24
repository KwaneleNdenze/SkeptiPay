class Notification < ApplicationRecord
  belongs_to :account

  enum status: {unread: 0, read: 1}

  # validations
  validates_presence_of :recipient, :subject, :body, :status
end