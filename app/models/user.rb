class User < ApplicationRecord
    validates :nom, presence: true,length: {maximum:50}
    VALID_EMAIL = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
    validates :email, presence: true,length: {maximum:255},format: { with: VALID_EMAIL }
end
