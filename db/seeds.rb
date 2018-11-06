# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Destroying current seeds"
Task.destroy_all

puts "Creating new seeds"
5.times do
  @task = Task.new(title: Faker::ChuckNorris.fact, details: Faker::FunnyName.name)
  @task.save
  p @task
end
