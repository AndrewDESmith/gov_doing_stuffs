class Category < ActiveRecord::Base
  belongs_to :user
  has_many :projects
  has_many :requests, through: :projects
end
