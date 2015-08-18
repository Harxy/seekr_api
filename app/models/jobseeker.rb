class Jobseeker < ActiveRecord::Base
  has_many :skills
  has_many :offers
end
