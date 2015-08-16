module Api
  class EmployersController < ApplicationController
    def index
      employers = Employer.all
      render json: employers
    end

    def create
      employer = Employer.new(employer_params)
      if employer.save
        render json: {status: 'successfully created'}.to_json
      else
        render json: {status: 'unsuccessful request', error: employer.errors.first}.to_json
      end
    end

    private

    def employer_params
      params.permit(:name, :description, :industry, :website)
    end

  end
end
