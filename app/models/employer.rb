class Employer < ActiveRecord::Base

  has_many :jobs
  belongs_to :user

end
