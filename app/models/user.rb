class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :questions
  has_many :answers

  has_many :favorites
  has_many :favorite_questions, through: :favorites, source: :question

  has_many :upvotes
  has_many :upvoted_questions, through: :upvotes, source: :upvoteable, source_type: 'Question'
  has_many :upvoted_answers,   through: :upvotes, source: :upvoteable, source_type: 'Answer'
end
