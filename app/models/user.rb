class User < ApplicationRecord
  validates :username, presence: true, length: { minimum: 3, maximum:16 }
  validates :email, presence: true, format: { with: URI::MailTo::EMAIL_REGEXP } 
  validates :passwprd, presence: true, length: { minimum: 6, maximum:128 }
end
