class CreateResponses < ActiveRecord::Migration
  def change
    create_table :responses do |t|
      t.belongs_to :surveyed_user
      t.belongs_to :choice
      t.belongs_to :question

      t.timestamps
    end
  end
end
