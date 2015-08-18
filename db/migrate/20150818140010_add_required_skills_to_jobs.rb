class AddRequiredSkillsToJobs < ActiveRecord::Migration
  def change
    add_column :jobs, :requiredSkills, :string
  end
end
