class CreateFavorites < ActiveRecord::Migration[5.1]
  def change
    create_table :favorites do |t|
      t.references :user,     null: false, index: true, foreign_key: true
      t.references :question, null: false, index: true, foreign_key: true
      t.timestamps
    end
  end
end
