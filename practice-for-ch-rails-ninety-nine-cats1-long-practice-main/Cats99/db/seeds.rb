# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
bob = Cat.new(birth_date: '2022-01-30', color: "green", sex: "M", name: "bob")
bob.save 

garfield = Cat.new(birth_date: '2018-03-02', color: "purple", sex: "F", name: "garfield")
garfield.save