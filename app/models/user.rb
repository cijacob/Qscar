class User < ApplicationRecord
  extend Devise::Models
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable

  #has_secure_password
  #has_secure_token :confirmation_token

  validates :username, 
    format: {with: /\A[a-zA-Z0-9_]{2,20}\z/, message: I18n.t("user.error.username") },
    uniqueness: {case_sensitive: false }

  validates :email,
    format: {with: /\A[^@\s]+@([^@.\s]+\.)+[^@.\s]+\z/},
    uniqueness: {case_sensitive: false }
end