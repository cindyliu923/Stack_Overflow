class CreateQuestions < ActiveRecord::Migration[5.1]
  def change
    create_table :questions do |t|
      t.string     :title,   null: false, default: ""
      t.text       :content, null: false
      t.references :user,    null: false, index: true, foreign_key: true
      t.timestamps
    end
  end
end
