class CreateTests < ActiveRecord::Migration[6.0]
  def change
    create_table :tests do |t|
      t.text :question
      t.text :answers, array:true, default: []
      t.text :correct_answer
      t.boolean :passed, default:false
      t.references :chapter, null: false, foreign_key: true

      t.timestamps
    end
  end
end
