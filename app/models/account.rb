class Account < ApplicationRecord
  belongs_to :user, dependent: :destroy
  has_many :invoices
  has_many :withdrawals
  has_many :payments
  has_many :notifications
end