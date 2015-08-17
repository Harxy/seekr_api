class AddJobIdToOffer < ActiveRecord::Migration
  def change
    add_reference :offers, :job, index: true, foreign_key: true
  end
end
