module Api
  class OffersController < ApplicationController

    def create
      offer = Offer.new(offer_params)
      if offer.save
        render json: {status: 'offer successfully created', offer_id: offer.id}.to_json
      else
        render json: {status: 'failed', error: offer.errors.first}.to_json
      end
    end

    def job_offers
      job = Job.find(params[:id])
      job_offers = Offer.find_by({job_id: job.id, accepted: true})
      render json: job_offers
    end

    def return_all

       offers = Offer.where({job_id: offer_all_params[:job_id]})
       array = []
       offers.each do |x|
         array << x.jobseeker_id
       end
       render json: array
    end

    private

    def offer_params
      params.permit(:job_id, :jobseeker_id, :accepted)
    end

    def offer_all_params
      params.permit(:job_id)
    end
  end
end
