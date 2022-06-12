# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

(1..10).each do |_idx|
  App.create(title: Cicero.words(rand(1..3)).capitalize, description: Cicero.sentences(rand(1..3)))
end

(1..10).each do |_idx|
  Game.create(title: Cicero.words(rand(1..3)).capitalize, description: Cicero.sentences(rand(1..3)))
end
