class CreateChapters < ActiveRecord::Migration[6.0]
  def change
    create_table :chapters do |t|
      t.string :name
      t.integer :level
      t.text :content
      t.text :summary
      t.integer :order
      t.references :course, null: false, foreign_key: true

      t.timestamps
    end
  end
end
