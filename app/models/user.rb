class User < ActiveRecord::Base
  has_many :surveys
  
  has_many :surveyed_users
  has_many :responses, through: :surveyed_users
end
