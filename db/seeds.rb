# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create!(email: 'bubba_smith@gmail.com',
             password: '123456',
             password_confirmation: '123456')

# Profile.create!(
#             team_id: 1,
#             team_number: 1,
#             nickname: "Dude",
#             first_name:  "Bubba",
#             last_name:  "Smith",
#             address:  "123 Main St",
#             city:  "Toronto",
#             province:  "ON",
#             postal_code:  "A1B 2C3",
#             role:  "administrator",
#             phone_number:  "4161234567",
#             throws:  "R",
#             bats:  "R",
#             user_id:  1
# )
