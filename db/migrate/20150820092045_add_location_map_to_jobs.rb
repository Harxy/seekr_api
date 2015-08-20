class AddLocationMapToJobs < ActiveRecord::Migration
  def change
    add_column :jobs, :locationmap, :string
  end
end
