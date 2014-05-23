class SurveyedUser < ActiveRecord::Base
  has_many :responses
end
