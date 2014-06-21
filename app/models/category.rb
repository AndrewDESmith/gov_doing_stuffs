class Category < ActiveRecord::Base
  belongs_to :user
  has_many :projects
  has_many :requests, through: :projects
  has_and_belongs_to_many :users
end
