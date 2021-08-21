# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(email: 'sinouhe.monteironunes@gmail.com', password: '123456', password_confirmation: '123456')
Course.create(name: 'Blockchain fundamentals')
Chapter.create(name: 'Why Blockchain?', level:1, content: '',
summary: 'In 2010, a programmer paid 
10,000 Bitcoins for 2 pizzas, roughly worth $30', order: 1, course_id: 1)


