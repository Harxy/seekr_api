module Api
  class JobsController < ApplicationController
    def index
      jobs = Job.all.map do |job|
        job.attributes.merge(imageURL: job.imageURL)
      end
      render json: jobs
    end

    def create
      job = Job.new(job_params)
      if job.save
        render json: { status: 'success' }.to_json
      else
        render json: {status: 'failed', error: job.errors.first}
      end
    end

    def show
      job = Job.find(params[:id])
      render json: job
    end

    def destroy
      job = Job.find(params[:id])
      if job.destroy
        render json: { status: 'successfully deleted' }.to_json if job.destroy
      else
        render json: {status: 'deletion failed', error: job.errors.first}
      end
    end

    def jobseekers_show
    end

    private

    def job_params
      params.permit(:title, :description, :start_date, :duration, :hours, :location, :wage, :employer_id, :requiredSkills, :contactName, :contactEmail, :locationmap)
    end
  end
end
