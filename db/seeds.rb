# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Genre.destroy_all
User.destroy_all
Screenplay.destroy_all
Review.destroy_all
Like.destroy_all
ScreenplayGenre.all

genres = %w[Action/Adventure Anime Anthology Biography Comedy Drama Fantasy FilmNoir Historical Horror Musical ScienceFiction Thriller]

genres.each do |genre|
  Genre.create(name: genre)
end

10.times do
  User.create!(name: Faker::Name.name, username: "username", bio: Faker::Quote.yoda, age: rand(99))
end

Screenplay.create!(category: "Film", picture_url: "https://en.wikipedia.org/wiki/The_Shawshank_Redemption#/media/File:ShawshankRedemptionMoviePoster.jpg", title: "The Shawshank Redemption", description: "A man goes to prison", runtime: 142)
Screenplay.create!(category: "TV Show", picture_url: "https://en.wikipedia.org/wiki/Tiger_King#/media/File:Tiger_King,_Murder,_Mayhem_and_Madness_publicity_image.jpg", title: "Tiger King", description: "Murder and deception in Oklahoma and some cats", num_seasons: 1, num_episodes: 7, runtime: 60)
Screenplay.create!(category: "Film", picture_url: "https://www.gstatic.com/tv/thumb/v22vodart/14843/p14843_v_v8_ao.jpg", title: "Sleepless in Seattle", runtime: 106)
Screenplay.create!(category: "Film", picture_url: "https://www.gstatic.com/tv/thumb/v22vodart/22186/p22186_v_v8_ag.jpg", title: "You've Got Mail", description: "Man and lady hate each other until they fall in love.", num_seasons: nil, num_episodes: nil, runtime: 119)
Screenplay.create!(category: "Film", picture_url: "https://m.media-amazon.com/images/M/MV5BMjMxMTQ3MzMwMV5BMl5BanBnXkFtZTgwNTYxNzYxMTE@._V1_.jpg", title: "Cool Runnings", description: "When a Jamaican sprinter is disqualified from the Olympic Games, he enlists the help of a dishonored coach to start the first Jamaican Bobsled Team", runtime: 98)
Screenplay.create!(category: "Film", picture_url: "https://www.bet.com/celebrities/photos/2012/11/the-cast-of-8-mile-where-are-they-now/_jcr_content/mainCol/imagegallerycontainer/galleryimage_0.custom750x0.dimg/__1532544698580__1532544679827/072518-celebrities-eminem-8-mile-shot.jpg", title: "8 Mile", description: "8 Mile is a 2002 American hip-hop musical film written by Scott Silver, directed by Curtis Hanson, and starring Eminem, Mekhi Phifer, Brittany Murphy, Michael Shannon, Anthony Mackie, and Kim Basinger", runtime: 118)
Screenplay.create!(category: "TV Show", picture_url: "https://static.next-episode.net/tv-shows-images/huge/burn-notice.jpg", title: "Burn Notice", description: "A spy recently disavowed by the U.S. government uses his special ops training to help others in trouble", num_seasons: 7, num_episodes: 111, runtime: 44)
Screenplay.create!(category: "Film", picture_url: "https://reporter.rit.edu:8443/sites/pubDir/slideShow/02-20/1521-2464-158882019.png", title: "The Joker", description: "Joker is a 2019 American psychological thriller film directed and produced by Todd Phillips, who co-wrote the screenplay with Scott Silver. The film, based on DC Comics characters, stars Joaquin Phoenix as the Joker and provides a possible origin story for the character.", runtime: 122)

20.times do
  Review.create!(user_id: User.all.ids.sample, screenplay_id: Screenplay.all.ids.sample, title: Faker::Quotes::Shakespeare.hamlet_quote, description: Faker::Quotes::Shakespeare.romeo_and_juliet_quote, rating: rand(6))
end

20.times do
  Like.create!(review_id: Review.all.ids.sample, user_id: User.all.ids.sample)
end

Screenplay.all.each do |screen|
  ScreenplayGenre.create!(screenplay_id: screen.id, genre_id: Genre.all.ids.sample)
end

