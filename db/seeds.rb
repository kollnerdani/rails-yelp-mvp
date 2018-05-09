
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Cleaning database...'
Restaurant.destroy_all

name = %w(Lofasz Gosse Csarda Grenuille Jakab)
address = %w(Paris London Prague Budapest Wien)
category = ["chinese", "italian", "japanese", "french", "belgian"]


10.times do

Restaurant.create!(name: name.sample, address: address.sample, category: category.sample)

end

puts "Finished"

