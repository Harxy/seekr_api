class AddContactNameToJobs < ActiveRecord::Migration
  def change
    add_column :jobs, :contactName, :string
  end
end
