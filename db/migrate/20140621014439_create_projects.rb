class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :name
      t.text :description
      t.string :twitter_message
      t.text :facebook_message
      t.text :email_message
      t.boolean :allow_photo_in_request
      t.references :category, index: true

      t.timestamps
    end
  end
end
