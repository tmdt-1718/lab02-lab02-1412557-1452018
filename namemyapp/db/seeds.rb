# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Article.delete_all
(1..2).each do |number| #lap tu` 1 toi 2
  #hackerrank.com for more information
  Article.create!(title: "title #{number}", body: "body #{number}", user_id:1)
end
