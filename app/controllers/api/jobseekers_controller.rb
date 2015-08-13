module Api
  class JobseekersController < ApplicationController
    def index
      jobseekers = Jobseeker.all
      render json: jobseekers
    end
  end
end
