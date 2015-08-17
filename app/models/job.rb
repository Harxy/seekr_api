class Job < ActiveRecord::Base

  belongs_to :employer

  has_many :offers


  validates_presence_of :title
                        :description
                        :industry
                        :website
end
