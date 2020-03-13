# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#create seed of clients with info

user = User.create(last_name: 'Brown', first_name: 'Sally', username: 'sbrown', password: 'abc123')
client1 = Client.create()
