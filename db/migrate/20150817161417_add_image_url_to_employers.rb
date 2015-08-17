class AddImageUrlToEmployers < ActiveRecord::Migration
  def change
    add_column :employers, :imageURL, :string
  end
end
