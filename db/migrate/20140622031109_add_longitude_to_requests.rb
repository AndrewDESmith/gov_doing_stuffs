class AddLongitudeToRequests < ActiveRecord::Migration
  def change
    add_column :requests, :longitude, :float
  end
end
