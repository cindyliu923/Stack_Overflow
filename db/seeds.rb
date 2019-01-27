# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create([
  { name: 'User A', email: 'user_a@example.com', password: '12345678' },
  { name: 'User B', email: 'user_b@example.com', password: '12345678' },
  { name: 'User C', email: 'user_c@example.com', password: '12345678' }
])

Question.create([
  { title: 'Q1_title', content: 'Q1_content', user: User.find(1) },
  { title: 'Q2_title', content: 'Q2_content', user: User.find(1) },
  { title: 'Q3_title', content: 'Q3_content', user: User.find(1) },
  { title: 'Q4_title', content: 'Q4_content', user: User.find(2) },
  { title: 'Q5_title', content: 'Q5_content', user: User.find(2) }
])

Answer.create([
  { content: 'Ans1_content', user: User.find(1), question: Question.find(1) },
  { content: 'Ans2_content', user: User.find(2), question: Question.find(1) },
  { content: 'Ans3_content', user: User.find(3), question: Question.find(1) },
  { content: 'Ans4_content', user: User.find(1), question: Question.find(2) },
  { content: 'Ans5_content', user: User.find(2), question: Question.find(2) },
  { content: 'Ans6_content', user: User.find(3), question: Question.find(2) }
])

# User.find(1).upvotes.create!(upvoteable: Question.find(1))
Upvote.create([
  { user: User.find(1), upvoteable: Question.find(1) },
  { user: User.find(1), upvoteable: Question.find(2) },
  { user: User.find(1), upvoteable: Question.find(3) },
  { user: User.find(1), upvoteable: Question.find(4) },
  { user: User.find(2), upvoteable: Question.find(1) },
  { user: User.find(2), upvoteable: Question.find(2) },
  { user: User.find(3), upvoteable: Question.find(1) },
  { user: User.find(1), upvoteable: Answer.find(1) },
  { user: User.find(1), upvoteable: Answer.find(2) },
  { user: User.find(1), upvoteable: Answer.find(3) }
])

Favorite.create([
  { user: User.find(1), question: Question.find(1) },
  { user: User.find(1), question: Question.find(2) },
  { user: User.find(1), question: Question.find(3) },
  { user: User.find(1), question: Question.find(4) },
  { user: User.find(1), question: Question.find(5) },
  { user: User.find(2), question: Question.find(1) }
])
