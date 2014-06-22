class AddLatitudeToRequests < ActiveRecord::Migration
  def change
    add_column :requests, :latitude, :float
  end
end
