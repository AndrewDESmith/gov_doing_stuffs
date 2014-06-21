class AddRequestIdToLocations < ActiveRecord::Migration
  def change
    add_reference :locations, :request, index: true
  end
end
