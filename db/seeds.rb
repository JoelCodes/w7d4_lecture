# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Event.destroy_all
Planner.destroy_all

joel = Planner.create name: 'Joel Shinness Events', photo_url: 'http://joelshinness.com/assets/img/avatars/avatar.jpg'
joel.events.create name: 'Impromptu Dance', date: 3.hours.from_now
joel.events.create name: 'Hackathon', date: 6.days.from_now
joel.events.create name: 'Next Year\'s Hackathon', date: 1.year.from_now

