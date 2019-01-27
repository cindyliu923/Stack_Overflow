class CreateUpvotes < ActiveRecord::Migration[5.1]
  def change
    create_table :upvotes do |t|
      t.references :user,       null: false, index: true, foreign_key: true
      t.belongs_to :upvoteable, polymorphic: true
      t.timestamps
    end
  end
end
