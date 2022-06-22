class User < ApplicationRecord   
   has_one :account
   # validations
   validates_presence_of :username, :email, :phone_number, :encrypted_password, :role

   enum role: [:client, :merchant]
   after_initialize :set_default_role, :if => :new_record?

   def set_default_role
      self.role ||= :client
   end

   devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
