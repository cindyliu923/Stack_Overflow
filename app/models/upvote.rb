class Upvote < ApplicationRecord
  belongs_to :user
  belongs_to :upvoteable, polymorphic: true
end
