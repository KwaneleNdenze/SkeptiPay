class User < ApplicationRecord   
   has_one :account
   # validations
   validates_presence_of :username, :email, :phone_number, :encrypted_password, :role, :type

   enum role: {client: 0, merchant: 1}

   devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
               
   def admin?
    type == 'User::Admin'
   end

   def merchant?
    type == 'User::Merchant'
   end

   def client?
    type == 'User::Client'
   end
   
end

