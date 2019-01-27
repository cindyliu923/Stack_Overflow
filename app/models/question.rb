class Question < ApplicationRecord
  belongs_to :user

  has_many :answers

  has_many :favorites
  has_many :favorite_users, through: :favorites, source: :user

  has_many :upvotes, as: :upvoteable
end
