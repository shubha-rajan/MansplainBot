# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

responses = Response.create!([{ message: "Well, actually... " }, { message: "Just to play devils' advocate, " }, { message: "But have you considered that " }, { message: "Not sure if you realize this, but " }, { message: "Thought I'd let you know that " }, { message: "Did you know that" }])
