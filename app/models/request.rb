class Request < ActiveRecord::Base
  belongs_to :project
  has_one :location
end
