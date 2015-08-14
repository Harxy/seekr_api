module Api
  class JobsController < ApplicationController
    def index
      jobs = Job.all
      render json: jobs
    end

    def create
      job = Job.new(job_params)
      render json: { status: 'success' }.to_json if job.save
    end

    def show
      job = Job.find(params[:id])
      render json: job
    end

    private

    def job_params
      params.permit(:title, :description, :start_date, :duration, :hours, :location, :wage, :employer_id)
    end
  end
end
