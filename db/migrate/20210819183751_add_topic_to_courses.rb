class AddTopicToCourses < ActiveRecord::Migration[6.0]
  def change
    add_column :courses, :topic, :string
  end
end
