class User < ApplicationRecord
    before_save { email.downcase! }
    VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i
    VALID_NAME_REGEX = /\A[A-Za-z]/i
    validates :name, presence: true , length: { maximum: 50 },
    format: {with:VALID_NAME_REGEX , message: "Vui long nhap ky tu" }
    validates :email, presence: true, length: { maximum: 50 },
    format: {with: VALID_EMAIL_REGEX},
    uniqueness: { case_sensitive: false }
    has_secure_password
    validates :password, presence: true, length: { minimum: 6 }
end
