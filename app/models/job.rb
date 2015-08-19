class Job < ActiveRecord::Base

  belongs_to :employer
  has_many :offers

  def imageURL
    employer.imageURL
  end


  validates_presence_of :title
                        :description
                        :industry
                        :website
end
