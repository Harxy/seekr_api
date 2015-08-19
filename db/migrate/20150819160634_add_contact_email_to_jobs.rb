class AddContactEmailToJobs < ActiveRecord::Migration
  def change
    add_column :jobs, :contactEmail, :string
  end

end
