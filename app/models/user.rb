class User < ApplicationRecord
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i

  validates :name, presence: true
  validates :email, presence: true, length: { maximum: 255 },
                  format: { with: VALID_EMAIL_REGEX }, uniqueness: true
  has_secure_password
  validates :password, :on => :create ,
  confirmation: { case_sensitive: true },
  length: { minimum: 8, maximum: 32 }
  belongs_to :role
  belongs_to :enterprise, optional: true

  def is_admin?
    RoleService::Find.admin.id == self.role_id
  end
end
