class Jobseeker < ActiveRecord::Base
  has_many :skills
  belongs_to :user
end
