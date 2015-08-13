module Api
  class JobseekersController < ApplicationController
    def index
      jobseekers = Jobseeker.all
      render json: jobseekers
    end

    def show
      jobseeker = Jobseeker.find(params[:id])
      render json: jobseeker
    end
  end
end
