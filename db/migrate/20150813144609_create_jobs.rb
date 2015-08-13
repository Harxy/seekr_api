class CreateJobs < ActiveRecord::Migration
  def change
    create_table :jobs do |t|
      t.string :title
      t.string :description
      t.date :start_date
      t.string :duration
      t.string :hours
      t.string :location
      t.decimal :wage

      t.timestamps null: false
    end
  end
end
