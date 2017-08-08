class User < ApplicationRecord
  has_secure_password
  has_many :questions
  has_many :answers
  has_many :messages
  has_many :chatrooms

  validates_uniqueness_of :email, :username

end


