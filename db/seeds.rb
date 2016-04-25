# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Team.create!(
            team_name:  'Autumn',
            tier:  '3',
            team_abbreviation:  'AMN'
)

Team.create!(
            team_name:  'Wildcards',
            tier:  '3',
            team_abbreviation:  'WCD'
)

User.create!(
             email: 'bubba_smith@gmail.com',
             password: '123456',
             password_confirmation: '123456'
)

User.create!(
             email: 'true_blue@gmail.com',
             password: '123456',
             password_confirmation: '123456'
)

User.create!(
             email: 'superstar@gmail.com',
             password: '123456',
             password_confirmation: '123456'
)

Profile.create!(
            team_id: 1,
            team_number: 1,
            nickname: 'Dude',
            first_name:  'Bubba',
            last_name:  'Smith',
            address:  '123 Main St',
            city:  'Toronto',
            province:  'ON',
            postal_code:  'A1B 2C3',
            admin:  false,
            phone_number:  '4161234567',
            throws:  'R',
            bats:  'R',
            user_id:  1
)

Profile.create!(
            team_id: 2,
            team_number: 15,
            nickname: 'True',
            first_name:  'Blue',
            last_name:  'Monday',
            address:  '123 Elsewhere St',
            city:  'Toronto',
            province:  'ON',
            postal_code:  'M1B 5V6',
            admin:  true,
            phone_number:  '4161234567',
            throws:  'L',
            bats:  'S',
            user_id:  2
)

Profile.create!(
            team_id: 2,
            team_number: 16,
            nickname: 'Superstar',
            first_name:  'Jon',
            last_name:  'Jones',
            address:  '123 Elsewhere St',
            city:  'Scarborough',
            province:  'ON',
            postal_code:  'A2C 9V2',
            admin:  true,
            phone_number:  '4161234567',
            throws:  'R',
            bats:  'R',
            user_id:  3
)

Stat.create!(
              plate_app:  4,
              at_bat:  3,
              first_base:  0,
              second_base:  1,
              third_base:  0,
              homerun:  1,
              hit:  2,
              rbi:  2,
              run:  1,
              walk:  0,
              strikeout:  0,
              sac_fly:  0,
              profile_id:  4,
              game_id:  1
)

Stat.create!(
              plate_app:  4,
              at_bat:  3,
              first_base:  0,
              second_base:  1,
              third_base:  0,
              homerun:  1,
              hit:  2,
              rbi:  2,
              run:  1,
              walk:  0,
              strikeout:  0,
              sac_fly:  0,
              profile_id:  5,
              game_id:  1
)

Stat.create!(
              plate_app:  4,
              at_bat:  4,
              first_base:  1,
              second_base:  1,
              third_base:  1,
              homerun:  1,
              hit:  4,
              rbi:  1,
              run:  1,
              walk:  0,
              strikeout:  0,
              sac_fly:  0,
              profile_id:  6,
              game_id:  1
)

Game.create!(
            date:  '2016-05-08 17:00',
            score_for:  0,
            score_against:  0,
            home_team_id:  2,
            away_team_id:  1,
            game_diamond:  "Miliken 5"
)
