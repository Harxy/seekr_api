class RemoveContactFromJobs < ActiveRecord::Migration
  def change
    remove_column :jobs, :Contact, :string
  end
end
