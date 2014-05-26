class Response < ActiveRecord::Base
  belongs_to :choice
  
  has_many :surveyed_users
  has_many :users, through: :surveyed_users
end
