module Api
  class SkillsController < ApplicationController
      def create
        skill = Skill.new(skill_params)
        if skill.save
          render json: {status: 'saved successfully'}.to_json
        else
          render json: {status: 'unsuccessful', errors: skill.errors.first}.to_json
        end
      end
      private
      def skill_params
        params.permit(:jobseeker_id, :skill)
      end
  end
end
