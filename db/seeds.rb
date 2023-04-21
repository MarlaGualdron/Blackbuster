# frozen_string_literal: true
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.create(name:"admin", last_name:"admin user", email:"admin@gmail.com", password:"testing", password_confirmation: "testing", admin: true)
User.create(name:"admin2", last_name:"admin user2", email:"admin2@gmail.com", password:"testing2", password_confirmation: "testing2", admin: true)
User.create(name:"just user", last_name:"any user", email:"user@gmail.com", password:"testing", password_confirmation: "testing")
User.create(name:"just user2", last_name:"any user2", email:"user2@gmail.com", password:"testing", password_confirmation: "testing")
User.create(name:"just user3", last_name:"any user3", email:"user3@gmail.com", password:"testing", password_confirmation: "testing")

#Movie.create(title: "Duro de matar", description: "Pelucula de acción", genre: "accion", release:"1999-07-24", quantity:2, rent_price:5 )
#Movie.create(title: "Duro de matar2", description: "Pelucula de acción", genre: "accion", release:"2005-07-24", quantity:3, rent_price:5 )
#Movie.create(title: "Diario de una princesa", description: "Love story", genre: "romántica", release:"2000-07-24", quantity:1, rent_price:5 )
#Movie.create(title: "Diario de una princesa2", description: "Love story", genre: "romántica", release:"2000-07-24", quantity:3, rent_price:5 )

#Rent.create(from: "2023-04-21", to: "2023-04-23", user_id: 3, movie_id: 1)
#Rent.create(from: "2023-04-21", to: "2023-04-23", user_id: 4, movie_id: 2)
#Rent.create(from: "2023-04-21", to: "2023-04-23", user_id: 3, movie_id: 1)
#Rent.create(from: "2023-04-21", to: "2023-04-23", user_id: 3, movie_id: 1)
#Rent.create(from: "2023-04-21", to: "2023-04-23", user_id: 3, movie_id: 1)
#Rent.create(from: "2023-04-21", to: "2023-04-23", user_id: 3, movie_id: 1)

