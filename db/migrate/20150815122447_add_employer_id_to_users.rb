class AddEmployerIdToUsers < ActiveRecord::Migration
  def change
    add_reference :users, :employer, index: true, foreign_key: true
  end
end
