class Job < ActiveRecord::Base

  belongs_to :employer


  validates_presence_of :title
                        :description
                        :industry
                        :website
end
