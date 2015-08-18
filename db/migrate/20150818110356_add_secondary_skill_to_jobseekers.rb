class AddSecondarySkillToJobseekers < ActiveRecord::Migration
  def change
    add_column :jobseekers, :SecondarySkill, :string
  end
end
