class RemoveGeoInfoFromRequests < ActiveRecord::Migration
  def change
    remove_column :requests, :longitude
    remove_column :requests, :latitude
    remove_column :requests, :address
  end
end
