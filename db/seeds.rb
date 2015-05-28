# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
action          = Genre.where(name: 'Action').first_or_create
comedy          = Genre.where(name: 'Comedy').first_or_create
drama           = Genre.where(name: 'Drama').first_or_create
science_fiction = Genre.where(name: 'Science Fiction').first_or_create
fantasy         = Genre.where(name: 'Fantasy').first_or_create

wizard_of_oz = Movie.where(name: 'Wizard of Oz').first_or_create do |movie|
  movie.description = "We're not in Kansas anymore..."
  movie.rating = "G"
  movie.genre = fantasy
end
big_lebowski = Movie.where(name: 'Big Lebowski').first_or_create do |movie|
  movie.description = "The dude abides..."
  movie.rating = "R"
  movie.genre = comedy
end
star_wars    = Movie.where(name: 'Star Wars').first_or_create do |movie|
  movie.description = "In a galaxy far, far away..."
  movie.rating = "PG"
  movie.genre = fantasy
end
powder       = Movie.where(name: 'Powder').first_or_create do |movie|
  movie.description = "Jim's favorite movie!"
  movie.rating = "PG13"
  movie.genre = drama
end

jim = Actor.where(name: 'Jim').first_or_create do |actor|
  actor.bio = "This is what happens when you get famous..."
  actor.genre = science_fiction
  actor.movies << powder
end