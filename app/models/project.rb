class Project < ActiveRecord::Base
  belongs_to :category
  has_many :requests, dependent: :destroy
end
