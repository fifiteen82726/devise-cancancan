# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


User.destroy_all
Question.destroy_all
Answer.destroy_all

user = User.create(email: "123@gmail.com", password: "2wsx1qaz")
q = Question.create(content: "Q1", user: user)
Answer.create(content:  "answer1", question: q, user: user)
Answer.create(content: "answer2", question: q, user: user)


100.times do |i|
	Question.create(content: Faker::Commerce.department, user: user)
end