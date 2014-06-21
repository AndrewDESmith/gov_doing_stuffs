class CreateRequests < ActiveRecord::Migration
  def change
    create_table :requests do |t|
      t.string :citizen_name
      t.string :email
      t.string :twitter_handler
      t.string :facebook_handler
      t.string :phone
      t.float :longitude
      t.float :latitude
      t.text :comment
      t.string :address
      t.binary :photo
      t.references :project, index: true

      t.timestamps
    end
  end
end
