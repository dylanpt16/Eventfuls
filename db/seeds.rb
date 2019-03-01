# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create({username: 'guest', password: "foobar"})
User.create({username: 'guest2', password: "foobar"})
User.create({username: 'guest3', password: "foobar"})

Group.create({name: 'Seattle Coder', description: 'A group of Software Engineers in Seattle', host_id: 1, lat: '47.614159', lng: '-122.3258383'})
Group.create({name: 'Seattle Web Developer', description: 'A group of Web Developer in Seattle', host_id: 2, lat: '47.614150', lng: '-122.3258384'})
Group.create({name: 'Web Developer', description: 'A group of Web Developer', host_id: 1, lat: '47.614157', lng: '-122.3258884'})


Membership.create({user_id: 2, group_id:1})
Membership.create({user_id: 3, group_id:1})
Membership.create({user_id: 1, group_id:2})

Event.create({name: 'Technical Interview Prep', description: 'Study group', owner_id: 1})
