class AddCustomFieldsToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :name,             :string, after: :id,                 index: true
    add_column :users, :company,          :string, after: :encrypted_password, index: true
    add_column :users, :job_title,        :string, after: :company,            index: true
    add_column :users, :introduction,     :string, after: :job_title,          index: true
    add_column :users, :personal_website, :string, after: :introduction,       index: true
    add_column :users, :twitter_link,     :string, after: :personal_website,   index: true
    add_column :users, :github_link,      :string, after: :twitter_link,       index: true
  end
end
