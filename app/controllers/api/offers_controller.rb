module Api
    class OffersController < ApplicationController
      def index
        offers = Offer.all
        render json: offers
      end
      def create
        offer = Offer.new(offer_params)
        if offer.save
          render json: { status: 'offer successfully created', offer_id: offer.id }.to_json
        else
          render json: { status: 'failed', error: offer.errors.first }.to_json
        end
      end

      def job_offers
        job = Job.find(params[:id])
        job_offers = Offer.find_by(job_id: job.id, accepted: true)
        render json: job_offers
      end

      def return_all


        jobseekers = Jobseeker.all.reject do |job_seeker|
          !job_seeker.offers.where("job_id = ?", params[:id]).empty?
        end
        render json: jobseekers
      end

      # def return_all
      #    offers = Offer.where({job_id: params[:id]})
      #    array = []
      #    offers.each do |x|
      #      array << x.jobseeker_id
      #    end
      #    render json: array
      # end

      private

      def offer_params
        params.permit(:job_id, :jobseeker_id, :accepted)
      end

      def offer_all_params
        params.permit(:job_id)
      end
    end
end
