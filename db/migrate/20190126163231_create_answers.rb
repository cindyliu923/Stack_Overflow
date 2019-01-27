class CreateAnswers < ActiveRecord::Migration[5.1]
  def change
    create_table :answers do |t|
      t.text       :content,  null: false
      t.references :user,     null: false, index: true, foreign_key: true
      t.references :question, null: false, index: true, foreign_key: true
      t.timestamps
    end
  end
end
