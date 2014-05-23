class CreateSurveyedUsers < ActiveRecord::Migration
  def change
    create_table :surveyed_users do |t|
      t.belongs_to :user
      t.belongs_to :response

      t.timestamps
    end
  end
end
