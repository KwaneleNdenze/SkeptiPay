class Notification < ApplicationRecord
  belongs_to :user
  # validations
  validates_presence_of :recipient, :subject, :text, :status
end