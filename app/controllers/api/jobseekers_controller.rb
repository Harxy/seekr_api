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

    def create
      jobseeker = Jobseeker.new(jobseeker_params)
      if jobseeker.save
        render json: {status: 'jobseeker successfully created'}.to_json
      else
        render json: {status: 'failed', error: jobseeker.errors.first}.to_json
      end
    end

    def jobseeker_params
      params.permit(:name, :email, :location)
    end
  end
end
