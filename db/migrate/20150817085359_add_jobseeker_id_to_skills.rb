class AddJobseekerIdToSkills < ActiveRecord::Migration
  def change
    add_reference :skills, :jobseeker, index: true, foreign_key: true
  end
end
