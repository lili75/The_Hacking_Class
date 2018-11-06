# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

nb_cour = 5
nb_student = 10


puts "Création de #{nb_student} Eleves"
nb_student.times do 
	Student.create(name: Faker::Name.first_name, cours_id: rand(1..nb_cour))
end


puts "Création de #{nb_cour} Cours"
nb_cour.times do 
	Cour.create(nom_cour: Faker::Pokemon.location)
end




