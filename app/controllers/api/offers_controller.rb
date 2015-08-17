module Api
  class OffersController < ApplicationController

    def create
      offer = Offer.new(offer_params)
      if offer.save
        render json: {status: 'offer successfully created'}.to_json
      else
        render json: {status: 'failed', error: offer.errors.first}.to_json
      end
    end

    def job_offers
      job = Job.find(params[:id])
      job_offers = Offer.find_by({job_id: job.id, accepted: true})
      render json: job_offers
    end

    private

    def offer_params
      params.permit(:job_id, :jobseeker_id, :accepted)
    end
  end
end
