class AddJobseekerIdToUsers < ActiveRecord::Migration
  def change
    add_reference :users, :jobseeker, index: true, foreign_key: true
  end
end
