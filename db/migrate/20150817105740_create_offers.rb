class CreateOffers < ActiveRecord::Migration
  def change
    create_table :offers do |t|
      t.boolean :accepted

      t.timestamps null: false
    end
  end
end
