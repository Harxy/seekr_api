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
      user.update_attribute(:employer_id, employer_params['employer_id'])
      render json: { status: 'success' }.to_json
    end

    private

    def user_params
      params.permit(:email, :password)
    end

    def employer_params
      params.permit(:user_id, :employer_id)
    end
  end
end
