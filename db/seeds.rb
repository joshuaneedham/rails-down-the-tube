# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
User.create([{
               name: 'Joshua Needham',
               email: 'joshuabneedham@gmail.com',
               password: '123123'
             },
             {
               name: 'Joshua Needham',
               email: 'joshuaneedham@comcast.net',
               password: '123123'
}])

p "Created #{User.count} users"

Firearm.destroy_all

Firearm.create([{
                  name: 'Desert Tech SRS A1',
                  firearm_type: 'Bolt Action',
                  description: 'Switch barrel sniper rifle',
                  user_id: 1
                },
                {
                  name: 'Coyote Killer',
                  firearm_type: 'Semi-Auto',
                  description: 'Custom cerekote AR-15 hunting rifle',
                  user_id: 1
                },
                {
                  name: 'Match Starter',
                  firearm_type: 'Bolt Action',
                  description: 'Ruger American custom barreled competition rifle',
                  user_id: 1
                },
                {
                  name: 'Desert Tech SRS A1',
                  firearm_type: 'Bolt Action',
                  description: 'Switch barrel sniper rifle',
                  user_id: 2
                },
                {
                  name: 'Coyote Killer',
                  firearm_type: 'Semi-Auto',
                  description: 'Custom cerekote AR-15 hunting rifle',
                  user_id: 2
                },
                {
                  name: 'Match Starter',
                  firearm_type: 'Bolt Action',
                  description: 'Ruger American custom barreled competition rifle',
                  user_id: 2
}])

p "Created #{Firearm.count} firearms"

Barrel.destroy_all

Barrel.create([{
                 caliber: '6.5x47 Lapua',
                 barrel_type: 'Stainless',
                 length: 22,
                 twist: 8,
                 contour: 'Factory',
                 rifling: '5r',
                 firearm_id: 1,
                 user_id: 1
               },
               {
                 caliber: '6x47 Lapua',
                 barrel_type: 'Stainless',
                 length: 22.5,
                 twist: 7,
                 contour: 'Rem Mag Sporter',
                 rifling: '5r',
                 firearm_id: 3,
                 user_id: 1
               },
               {
                 caliber: '.308 Winchester',
                 barrel_type: 'Stainless',
                 length: 18,
                 twist: 8,
                 contour: 'Factory',
                 rifling: '5r',
                 firearm_id: 1,
                 user_id: 1
               },
               {
                 caliber: '5.56',
                 barrel_type: 'Stainless',
                 length: 18,
                 twist: 7,
                 contour: 'SPR',
                 rifling: 'Button',
                 firearm_id: 2,
                 user_id: 1
               },
               {
                 caliber: '6.5x47 Lapua',
                 barrel_type: 'Stainless',
                 length: 22,
                 twist: 8,
                 contour: 'Factory',
                 rifling: '5r',
                 firearm_id: 1,
                 user_id: 2
               },
               {
                 caliber: '6x47 Lapua',
                 barrel_type: 'Stainless',
                 length: 22.5,
                 twist: 7,
                 contour: 'Rem Mag Sporter',
                 rifling: '5r',
                 firearm_id: 3,
                 user_id: 2
               },
               {
                 caliber: '.308 Winchester',
                 barrel_type: 'Stainless',
                 length: 18,
                 twist: 8,
                 contour: 'Factory',
                 rifling: '5r',
                 firearm_id: 1,
                 user_id: 2
               },
               {
                 caliber: '5.56',
                 barrel_type: 'Stainless',
                 length: 18,
                 twist: 7,
                 contour: 'SPR',
                 rifling: 'Button',
                 firearm_id: 2,
                 user_id: 2
}])

p "Created #{Barrel.count} barrels"


Outing.destroy_all
Outing.create([{
                 date: Faker::Date.between_except(1.year.ago, 1.year.from_now, Date.today),
                 barrel_id: 1,
                 firearm_id: 1,
                 user_id: 1,
                 shots_fired: 1100
               },
               {
                 date: Faker::Date.between_except(1.year.ago, 1.year.from_now, Date.today),
                 barrel_id: 2,
                 firearm_id: 3,
                 user_id: 1,
                 shots_fired: 1100
               },
               {
                 date: Faker::Date.between_except(1.year.ago, 1.year.from_now, Date.today),
                 barrel_id: 2,
                 firearm_id: 3,
                 user_id: 1,
                 shots_fired: 1100
               },
               {
                 date: Faker::Date.between_except(1.year.ago, 1.year.from_now, Date.today),
                 barrel_id: 4,
                 firearm_id: 2,
                 user_id: 1,
                 shots_fired: 1100
               },
               {
                 date: Faker::Date.between_except(1.year.ago, 1.year.from_now, Date.today),
                 barrel_id: 1,
                 firearm_id: 1,
                 user_id: 1,
                 shots_fired: 1100
               },
               {
                 date: Faker::Date.between_except(1.year.ago, 1.year.from_now, Date.today),
                 barrel_id: 2,
                 firearm_id: 3,
                 user_id: 1,
                 shots_fired: 1100
               },
               {
                 date: Faker::Date.between_except(1.year.ago, 1.year.from_now, Date.today),
                 barrel_id: 4,
                 firearm_id: 2,
                 user_id: 1,
                 shots_fired: 1100
               },
               {
                 date: Faker::Date.between_except(1.year.ago, 1.year.from_now, Date.today),
                 barrel_id: 1,
                 firearm_id: 1,
                 user_id: 2,
                 shots_fired: 1100
               },
               {
                 date: Faker::Date.between_except(1.year.ago, 1.year.from_now, Date.today),
                 barrel_id: 2,
                 firearm_id: 3,
                 user_id: 2,
                 shots_fired: 1100
               },
               {
                 date: Faker::Date.between_except(1.year.ago, 1.year.from_now, Date.today),
                 barrel_id: 2,
                 firearm_id: 3,
                 user_id: 2,
                 shots_fired: 1100
               },
               {
                 date: Faker::Date.between_except(1.year.ago, 1.year.from_now, Date.today),
                 barrel_id: 4,
                 firearm_id: 2,
                 user_id: 2,
                 shots_fired: 1100
               },
               {
                 date: Faker::Date.between_except(1.year.ago, 1.year.from_now, Date.today),
                 barrel_id: 1,
                 firearm_id: 1,
                 user_id: 2,
                 shots_fired: 1100
               },
               {
                 date: Faker::Date.between_except(1.year.ago, 1.year.from_now, Date.today),
                 barrel_id: 2,
                 firearm_id: 3,
                 user_id: 2,
                 shots_fired: 1100
               },
               {
                 date: Faker::Date.between_except(1.year.ago, 1.year.from_now, Date.today),
                 barrel_id: 4,
                 firearm_id: 2,
                 user_id: 2,
                 shots_fired: 1100
}])

p "Created #{Outing.count} outings"

