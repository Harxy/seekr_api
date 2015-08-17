class AddImageUrlToJobseekers < ActiveRecord::Migration
  def change
    add_column :jobseekers, :imageURL, :string
  end
end
