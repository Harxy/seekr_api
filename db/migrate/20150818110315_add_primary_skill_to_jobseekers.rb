class AddPrimarySkillToJobseekers < ActiveRecord::Migration
  def change
    add_column :jobseekers, :PrimarySkill, :string
  end
end
