module Api
  class UsersController < ApplicationController
    skip_before_action :require_login, only: [:new, :create]

    def create
      user = sign_up(user_params)

      if user.valid?
        sign_in(user)
        render json: { status: 'success' }.to_json
      else
        render json: { status: 'failed', error: user.errors.first }.to_json
      end
    end

    def set_employer
      user = User.find(employer_params['user_id'])
      if (!user.employer_id.nil? || !user.jobseeker_id.nil?)
        render json: { status: 'update failed', error: 'user already assigned' }.to_json
        return
      end
      if user.update_attribute(:employer_id, employer_params['employer_id'])
        render json: { status: 'update success' }.to_json
      else
        render json: { status: 'update failed', error: user.errors.first }.to_json
      end
    end

    def set_jobseeker
      user = User.find(jobseeker_params['user_id'])
      if (!user.employer_id.nil? || !user.jobseeker_id.nil?)
        render json: { status: 'update failed', error: 'user already assigned' }.to_json
        return
      end
      if user.update_attribute(:jobseeker_id, jobseeker_params['jobseeker_id'])
        render json: { status: 'update success' }.to_json
      else
        render json: { status: 'update failed', error: user.errors.first }.to_json
      end
    end

    private

    def user_params
      params.permit(:email, :password)
    end

    def employer_params
      params.permit(:user_id, :employer_id)
    end

    def jobseeker_params
      params.permit(:user_id, :jobseeker_id)
    end
  end
end
