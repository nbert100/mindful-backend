# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#create seed of clients with info

user = User.create(last_name: 'Brown', first_name: 'Sally', username: 'sbrown', password_digest: 'abc123')
client1 = Client.create(user_id: 1, first_name: 'Mary', last_name: 'Smith', cin: '726472949', phone: '2015552734', address: '1234 Any Street, Town, NY', zipcode: '11233')
provyder1 = Provyder.create(first_name: 'Ken', last_name: 'Doll', specialty: 'Psychiatrist', title: 'MD', phone: '1235554321', fax: '1235564321', address: '324 Hospital Way, Town, NY', zipcode: '12435')
appointment1 = Appointment.create(client_id: 1, provyder_id: 1, when: Date.today, kind: 'initial')
