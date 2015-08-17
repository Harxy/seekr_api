class AddJobseekerIdToOffer < ActiveRecord::Migration
  def change
    add_reference :offers, :jobseeker, index: true, foreign_key: true
  end
end
