class AddEmployerIdToJobs < ActiveRecord::Migration
  def change
    add_reference :jobs, :employer, index: true, foreign_key: true
  end
end
