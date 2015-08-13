module Api
  class EmployersController < ApplicationController
    def index
      employers = Employer.all
      render json: employers
    end
  end
end
