class CreateEmployers < ActiveRecord::Migration
  def change
    create_table :employers do |t|
      t.string :name
      t.string :description
      t.string :industry
      t.string :website

      t.timestamps null: false
    end
  end
end
