class User < ApplicationRecord
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

  validates :name, presence: true
  validates :email, presence: true, length: { maximum: 255 },
                  format: { with: VALID_EMAIL_REGEX }
  has_secure_password
  validates :password, 
  confirmation: { case_sensitive: true },
  length: { minimum: 8, maximum: 32 }
  has_one :enterprise
end
