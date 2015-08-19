class RemoveContactDetailsFromJobs < ActiveRecord::Migration
  def change
    remove_column :jobs, :contactDetails, :string
  end
end
