# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.destroy_all
Friendship.destroy_all

alan = User.create(name: "Alan Rickman", password: "snaperocks", email: "alanrickman@gmail.com")
snape = User.create(name: "Severus Snape", password: "alanrocks", email: "hbprince@gmail.com")

always = Friendship.create(user_id: "alanrickman@gmail.com", friend_id: "hbprince@gmail.com")
