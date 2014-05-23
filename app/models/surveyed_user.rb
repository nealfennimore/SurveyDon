class SurveyedUser < ActiveRecord::Base
  belongs_to :responses
  belongs_to :users
end
