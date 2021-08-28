class AddChoiceToTests < ActiveRecord::Migration[6.0]
  def change
    add_column :tests, :choice, :text
  end
end
