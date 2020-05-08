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
  User.create!(name: Faker::Name.name, username: Faker::Name.name, password: "password", password_confirmation: "password", bio: Faker::Quote.yoda, age: rand(99))
end

Screenplay.create!(category: "Film", picture_url: "https://en.wikipedia.org/wiki/The_Shawshank_Redemption#/media/File:ShawshankRedemptionMoviePoster.jpg", title: "The Shawshank Redemption", description: "A man goes to prison", runtime: 142)
Screenplay.create!(category: "TV Show", picture_url: "https://en.wikipedia.org/wiki/Tiger_King#/media/File:Tiger_King,_Murder,_Mayhem_and_Madness_publicity_image.jpg", title: "Tiger King", description: "Murder and deception in Oklahoma and some cats", num_seasons: 1, num_episodes: 7, runtime: 60)
Screenplay.create!(category: "Film", picture_url: "https://www.gstatic.com/tv/thumb/v22vodart/14843/p14843_v_v8_ao.jpg", title: "Sleepless in Seattle", runtime: 106)
Screenplay.create!(category: "Film", picture_url: "https://www.gstatic.com/tv/thumb/v22vodart/22186/p22186_v_v8_ag.jpg", title: "You've Got Mail", description: "Man and lady hate each other until they fall in love.", num_seasons: nil, num_episodes: nil, runtime: 119)
Screenplay.create!(category: "Film", picture_url: "https://m.media-amazon.com/images/M/MV5BMjMxMTQ3MzMwMV5BMl5BanBnXkFtZTgwNTYxNzYxMTE@._V1_.jpg", title: "Cool Runnings", description: "When a Jamaican sprinter is disqualified from the Olympic Games, he enlists the help of a dishonored coach to start the first Jamaican Bobsled Team", runtime: 98)
Screenplay.create!(category: "Film", picture_url: "https://www.bet.com/celebrities/photos/2012/11/the-cast-of-8-mile-where-are-they-now/_jcr_content/mainCol/imagegallerycontainer/galleryimage_0.custom750x0.dimg/__1532544698580__1532544679827/072518-celebrities-eminem-8-mile-shot.jpg", title: "8 Mile", description: "8 Mile is a 2002 American hip-hop musical film written by Scott Silver, directed by Curtis Hanson, and starring Eminem, Mekhi Phifer, Brittany Murphy, Michael Shannon, Anthony Mackie, and Kim Basinger", runtime: 118)
Screenplay.create!(category: "TV Show", picture_url: "https://static.next-episode.net/tv-shows-images/huge/burn-notice.jpg", title: "Burn Notice", description: "A spy recently disavowed by the U.S. government uses his special ops training to help others in trouble", num_seasons: 7, num_episodes: 111, runtime: 44)
Screenplay.create!(category: "Film", picture_url: "https://reporter.rit.edu:8443/sites/pubDir/slideShow/02-20/1521-2464-158882019.png", title: "The Joker", description: "Joker is a 2019 American psychological thriller film directed and produced by Todd Phillips, who co-wrote the screenplay with Scott Silver. The film, based on DC Comics characters, stars Joaquin Phoenix as the Joker and provides a possible origin story for the character.", runtime: 122)
Screenplay.create!(category: "TV Show", picture_url: "https://image.pbs.org/contentchannels/2969/jG4GHTFNaKemFyVHmZFP3Q.jpg", title: "The Great British Baking Show", description: "A talented batch of amateur bakers face off in a 10-week competition, whipping up their best dishes in the hopes of being named the UK's best.", num_seasons: 7, num_episodes: 70, runtime: 57)
Screenplay.create!(category: "Film", picture_url: "https://lh3.googleusercontent.com/auIs5tjWlLYaFPGClZOJ7m5YVbnX6uBvz0X02r8TkwFKdzE53ww2MqWSS9gU0YNqoYwvpg", title: "The Dark Knight", description: "With the help of allies Lt. Jim Gordon (Gary Oldman) and DA Harvey Dent (Aaron Eckhart), Batman (Christian Bale) has been able to keep a tight lid on crime in Gotham City. But when a vile young criminal calling himself the Joker (Heath Ledger) suddenly throws the town into chaos, the caped Crusader begins to tread a fine line between heroism and vigilantism.", runtime: 152)
Screenplay.create!(category: "Film", picture_url: "https://i.insider.com/57d6c8e8dd0895cc308b491a?width=1100&format=jpeg&auto=webp", title: "Mulan", description: "Fearful that her ailing father will be drafted into the Chinese military, Mulan (Ming-Na Wen) takes his spot -- though, as a girl living under a patriarchal regime, she is technically unqualified to serve. She cleverly impersonates a man and goes off to train with fellow recruits. Accompanied by her dragon, Mushu (Eddie Murphy), she uses her smarts to help ward off a Hun invasion, falling in love with a dashing captain along the way.", runtime: 88)
Screenplay.create!(category: "Film", picture_url: "https://3yoyr53fr4c8sig6z3tnt3tj-wpengine.netdna-ssl.com/wp-content/uploads/2018/06/GreatestShowman-1.jpg", title: "The Greatest Showman", description: "Inspired by the imagination of P.T. Barnum, The Greatest Showman is an original musical that celebrates the birth of show business & tells of a visionary who rose from nothing to create a spectacle that became a worldwide sensation.", runtime: 106)
Screenplay.create!(category: "Film", picture_url: "https://upload.wikimedia.org/wikipedia/en/7/7c/About_Time_%282013_film%29_Poster.jpg", title: "About Time", description: "When Tim Lake (Domhnall Gleeson) is 21, his father (Bill Nighy) tells him a secret: The men in their family can travel through time. Although he can't change history, Tim resolves to improve his life by getting a girlfriend. He meets Mary (Rachel McAdams), falls in love and finally wins her heart via time-travel and a little cunning. However, as his unusual life progresses, Tim finds that his special ability can't shield him and those he loves from the problems of ordinary life.", runtime: 123)
Screenplay.create!(category: "Film", picture_url: "https://resizing.flixster.com/TCwEawKtfEhL5PaBOvyOWfDJJ28=/300x300/v1.aDsyNDcxO2o7MTg0MDU7MTIwMDs0NzQ7NzAw", title: "Dan in Real Life", description: "Widower Dan Burns gives family advice in his column, but struggles with raising his three daughters alone. After arriving at Dan's parents' for a family get together, their bickering drives him to take refuge in the local bookstore, where he meets and swiftly falls for charming Marie. However, the revelation that Marie is in fact the new girlfriend of Dan's brother brings their fragile flirtation to a shuddering halt.", runtime: 98)
Screenplay.create!(category: "Film", picture_url: "https://upload.wikimedia.org/wikipedia/en/0/02/The_Proposal.jpg", title: "The Proposal", description: "Faced with deportation to her native Canada, high-powered book editor Margaret Tate (Sandra Bullock) says she's engaged to marry Andrew Paxton (Ryan Reynolds), her hapless assistant. Andrew agrees to the charade, but imposes a few conditions of his own, including flying to Alaska to meet his eccentric family. With a suspicious immigration official always lurking nearby, Margaret and Andrew must stick to their wedding plan despite numerous mishaps.", runtime: 108)
Screenplay.create!(category: "Film", picture_url: "https://upload.wikimedia.org/wikipedia/en/d/d2/Back_to_the_Future.jpg", title: "Back to the Future", description: "In this 1980s sci-fi classic, small-town California teen Marty McFly (Michael J. Fox) is thrown back into the '50s when an experiment by his eccentric scientist friend Doc Brown (Christopher Lloyd) goes awry. Traveling through time in a modified DeLorean car, Marty encounters young versions of his parents (Crispin Glover, Lea Thompson), and must make sure that they fall in love or he'll cease to exist. Even more dauntingly, Marty has to return to his own time and save the life of Doc Brown.", runtime: 116)
Screenplay.create!(category: "Film", picture_url: "https://www.austinchronicle.com/binary/43ed/napoleon-dynamite.jpg", title: "Napoleon Dynamite", description: "In small-town Preston, Idaho, awkward teen Napoleon Dynamite (Jon Heder) has trouble fitting in. After his grandmother is injured in an accident, his life is made even worse when his strangely nostalgic uncle, Rico (Jon Gries), shows up to keep an eye on him. With no safe haven at home or at school, Napoleon befriends the new kid, Pedro (Efren Ramirez), a morose Hispanic boy who speaks little English. Together the two launch a campaign to run for class president.", runtime: 96)
Screenplay.create!(category: "Film", picture_url: "https://cdn.onebauer.media/one/empire-tmdb/films/11431/images/rh2JPDIn9aI6dpAxUs0XT707nPT.jpg?quality=50&width=1800&ratio=16-9&resizeStyle=aspectfill&format=jpg", title: "Fever Pitch", description: "DescriptionWhen Ben Wrightman (Jimmy Fallon), a young teacher, begins dating pretty businesswoman Lindsey Meeks (Drew Barrymore), the two don't seem to have a lot of the same interests, but they fall in love, regardless. Their romance goes well until baseball season begins, and Lindsey soon realizes that Ben is completely obsessed with the Boston Red Sox. Though she tries to understand Ben's passionate team loyalty, eventually it threatens to end their otherwise happy relationship.", runtime: 106)
Screenplay.create!(category: "Film", picture_url: "https://vignette.wikia.nocookie.net/indianajones/images/6/64/IndianaJonesAndTheLastCrusade%28Novel%29.jpg/revision/latest/top-crop/width/360/height/450?cb=20070624221439", title: "Indiana Jones and the Last Crusade", description: "The intrepid explorer Indiana Jones sets out to rescue his father, a medievalist who has vanished while searching for the Holy Grail. Following clues in the old man's notebook, Indy arrives in Venice, where he enlists the help of a beautiful academic, but they are not the only ones who are on the trail, and some sinister old enemies soon come out of the woodwork.", runtime: 127)
Screenplay.create!(category: "TV Show", picture_url: "https://m.media-amazon.com/images/M/MV5BNDQ5NDZiYjktZmFmMy00MjAxLTk1MDktOGZjYTY5YTE1ODdmXkEyXkFqcGdeQXVyNjcwMzEzMTU@._V1_.jpg", title: "Community", description: "When fast-talking lawyer Jeff Winger (Joel McHale) finds his degree has been revoked, he is forced to go back to school at Greendale Community College. Hoping to score points with a pretty coed, he invents a study group and invites her to join it. Imagine his surprise when she's not the only one who shows up for help with Spanish from the 'board-certified tutor' he proclaims himself to be. Though his command of the language is anything but good, the members continue to meet and end up learning a lot about themselves.", num_seasons: 6, num_episodes: 110, runtime: 27)


# Screenplay.create!(category: "TV Show", picture_url: "", title: "Bob's Burgers", description: "", num_seasons:, num_episodes:, runtime )
# Screenplay.create!(category: "TV Show", picture_url: "", title: "The Office", description: "", num_seasons: , num_episodes:, runtime )
# Screenplay.create!(category: "TV Show", picture_url: "", title: "New Girl", description: "", num_seasons: , num_episodes:, runtime )
# Screenplay.create!(category: "TV Show", picture_url: "", title: "Schitt's Creek", description: "", num_seasons: , num_episodes:, runtime )
# Screenplay.create!(category: "TV Show", picture_url: "", title: "Gilmore Girls", description: "", num_seasons: , num_episodes:, runtime )
# Screenplay.create!(category: "TV Show", picture_url: "", title: "Grey's Anatomy", description: "", num_seasons: , num_episodes:, runtime )
# Screenplay.create!(category: "TV Show", picture_url: "", title: "Black Mirror", description: "", num_seasons: , num_episodes:, runtime )
# Screenplay.create!(category: "TV Show", picture_url: "", title: "Jeopardy", description: "", num_seasons: , num_episodes:, runtime )


20.times do
  Review.create!(user_id: User.all.ids.sample, screenplay_id: Screenplay.all.ids.sample, title: Faker::Hipster.sentence, description: Faker::Hipster.paragraph, rating: rand(6))
end

20.times do
  Like.create!(review_id: Review.all.ids.sample, user_id: User.all.ids.sample)
end

Screenplay.all.each do |screen|
  ScreenplayGenre.create!(screenplay_id: screen.id, genre_id: Genre.all.ids.sample)
end

