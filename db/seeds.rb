# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# TODO: Write a seed to insert 10 posts in the database
puts 'Creating 10 fake posts...'
5.times do
  @articles = Article.new(
    title: Faker::Book.title,
    content: Faker::Lorem.paragraph_by_chars(number: 256, supplemental: false)
  )
  @articles.save!
end
