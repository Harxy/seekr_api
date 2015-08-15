class User < ActiveRecord::Base

  has_many :employers
  has_many :jobseekers
  
  validates :email, presence: true, uniqueness: true
  validates :password_digest, presence: true
end
