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

genres = %w[Action/Adventure Animation Anthology Biography Comedy Drama Fantasy GameShow Historical Horror Musical Reality RomCom ScienceFiction SitCom Thriller]

genres.each do |genre|
  Genre.create(name: genre)
end

15.times do
  User.create!(name: Faker::Name.name, username: Faker::Name.name, password: "password", password_confirmation: "password", bio: Faker::Quote.yoda, age: rand(99))
end

Screenplay.create!(category: "Film", picture_url: "https://images-na.ssl-images-amazon.com/images/I/51zUbui%2BgbL._SY445_.jpg", title: "The Shawshank Redemption", description: "A man goes to prison", runtime: 142)
Screenplay.create!(category: "TV Show", picture_url: "https://media.newyorker.com/photos/5e87b6bd391eb000086a4536/master/pass/200413_r36193web.jpg", title: "Tiger King", description: "Murder and deception in Oklahoma and some cats", num_seasons: 1, num_episodes: 7, runtime: 60)
Screenplay.create!(category: "Film", picture_url: "https://www.gstatic.com/tv/thumb/v22vodart/14843/p14843_v_v8_ao.jpg", title: "Sleepless in Seattle", description: "A woman hears a lonely man on the radio and decides she's in love with him...it's a big adventure from there.", runtime: 106)
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
Screenplay.create!(category: "Film", picture_url: "https://cdn.onebauer.media/one/empire-tmdb/films/11431/images/rh2JPDIn9aI6dpAxUs0XT707nPT.jpg?quality=50&width=1800&ratio=16-9&resizeStyle=aspectfill&format=jpg", title: "Fever Pitch", description: "When Ben Wrightman (Jimmy Fallon), a young teacher, begins dating pretty businesswoman Lindsey Meeks (Drew Barrymore), the two don't seem to have a lot of the same interests, but they fall in love, regardless. Their romance goes well until baseball season begins, and Lindsey soon realizes that Ben is completely obsessed with the Boston Red Sox. Though she tries to understand Ben's passionate team loyalty, eventually it threatens to end their otherwise happy relationship.", runtime: 106)
Screenplay.create!(category: "Film", picture_url: "https://vignette.wikia.nocookie.net/indianajones/images/6/64/IndianaJonesAndTheLastCrusade%28Novel%29.jpg/revision/latest/top-crop/width/360/height/450?cb=20070624221439", title: "Indiana Jones and the Last Crusade", description: "The intrepid explorer Indiana Jones sets out to rescue his father, a medievalist who has vanished while searching for the Holy Grail. Following clues in the old man's notebook, Indy arrives in Venice, where he enlists the help of a beautiful academic, but they are not the only ones who are on the trail, and some sinister old enemies soon come out of the woodwork.", runtime: 127)
Screenplay.create!(category: "TV Show", picture_url: "https://m.media-amazon.com/images/M/MV5BNDQ5NDZiYjktZmFmMy00MjAxLTk1MDktOGZjYTY5YTE1ODdmXkEyXkFqcGdeQXVyNjcwMzEzMTU@._V1_.jpg", title: "Community", description: "When fast-talking lawyer Jeff Winger (Joel McHale) finds his degree has been revoked, he is forced to go back to school at Greendale Community College. Hoping to score points with a pretty coed, he invents a study group and invites her to join it. Imagine his surprise when she's not the only one who shows up for help with Spanish from the 'board-certified tutor' he proclaims himself to be. Though his command of the language is anything but good, the members continue to meet and end up learning a lot about themselves.", num_seasons: 6, num_episodes: 110, runtime: 27)
Screenplay.create!(category: "TV Show", picture_url: "https://m.media-amazon.com/images/M/MV5BZGJiNmM1NDctNWUxYS00YzE4LWJjNTgtYTJhYzE0NjFmMTMwXkEyXkFqcGdeQXVyNTAyODkwOQ@@._V1_.jpg", title: "Bob's Burgers", description: "Bob Belcher is a third-generation restaurateur who runs Bob's Burgers with his loving wife and their three children. Bob believes his burgers speak for themselves and isn't afraid to offer a variety of off-beat creations. Bob's wife, Linda, supports his dream but is becoming sick of the slow times, as the restaurant is constantly in danger of going out of business. The main competition to Bob's Burgers is a busy pasta joint located across the street that is run by Bob's nemesis, Jimmy Pesto. Despite the challenges, which includes consistent harassment from Linda's ex - a health inspector - Bob tries to keep the grill sizzling.", num_seasons: 10, num_episodes: 190, runtime: 22)
Screenplay.create!(category: "TV Show", picture_url: "https://m.media-amazon.com/images/M/MV5BMDNkOTE4NDQtMTNmYi00MWE0LWE4ZTktYTc0NzhhNWIzNzJiXkEyXkFqcGdeQXVyMzQ2MDI5NjU@._V1_.jpg", title: "The Office", description: "This US adaptation, set at a paper company in Scranton, Pa., has a similar documentary style to that of the Ricky Gervais-led British original. It features the staff of Dunder-Mifflin, a staff that includes characters based on characters from the British show (and, quite possibly, people you work with in your office). There's Jim, the likable employee who's a bit of an everyman. Jim has a thing for receptionist-turned-sales rep Pam (because office romances are always a good idea). There's also Dwight, the successful co-worker who lacks social skills and common sense. And there's Ryan, who has held many jobs at the company.", num_seasons: 9, num_episodes: 201, runtime: 28)
Screenplay.create!(category: "TV Show", picture_url: "https://www.gstatic.com/tv/thumb/tvbanners/15032839/p15032839_b_v8_ab.jpg", title: "New Girl", description: "After going through a rough breakup, awkward and upbeat Jess (Zooey Deschanel) moves in with three single guys. Intelligent and witty Nick is an underachiever who took the bartender off-ramp on his road to success. Schmidt obsesses over his social standing and looks at Jess as a personal project. Winston is a competitive former athlete who, after realizing he will never become a pro, moves into the loft. Together with Jess' best friend, Cece, they bond to form an unlikely, and dysfunctional, family.", num_seasons: 7, num_episodes: 146, runtime: 24)
Screenplay.create!(category: "TV Show", picture_url: "https://www.gstatic.com/tv/thumb/tvbanners/17653956/p17653956_b_v8_aa.jpg", title: "Schitt's Creek", description: "In the sitcom 'Schitt's Creek,' a wealthy couple -- video store magnate Johnny and his soap opera star wife Moira -- suddenly find themselves completely broke. With only one remaining asset, a small town called Schitt's Creek, which the Roses bought years earlier as a joke, this once-wealthy couple must give up life as they know it. With their two spoiled children in tow and their pampered lives behind them, the Rose family is forced to face their newfound poverty head-on and come together as a family to survive.", num_seasons: 6, num_episodes: 80, runtime: 48)
Screenplay.create!(category: "TV Show", picture_url: "https://www.gstatic.com/tv/thumb/tvbanners/184655/p184655_b_v8_ab.jpg", title: "Gilmore Girls", description: "Set in a storybook Connecticut town populated by an eclectic mix of dreamers, artists and everyday folk, this multigenerational drama about family and friendship centres around Lorelai Gilmore and her daughter, Rory. Lorelai owns the town's bed-and-breakfast, the Dragonfly Inn, with best friend/chef Sookie, and contends with weekly dinners with eccentric, well-off parents Richard and Emily Gilmore (who always have something to say about their daughter's life). After high school, Rory attends Yale University but frequently returns to Stars Hollow to visit her mom.", num_seasons: 7, num_episodes: 153, runtime: 39)
Screenplay.create!(category: "TV Show", picture_url: "https://www.gstatic.com/tv/thumb/tvbanners/17114349/p17114349_b_v8_aa.jpg", title: "Grey's Anatomy", description: "The medical drama series focuses on a group of young doctors at Seattle Grace Mercy West Hospital, who began their careers at the facility as interns. One of the young doctors and the show's namesake, Meredith Grey, is the daughter of a famous surgeon. Grey struggles to maintain relationships with her colleagues, particularly the hospital's one-time chief of surgery, Richard Webber, due to a pre-existing relationship between them - Webber and Meredith's mother had a personal relationship when Meredith was young.", num_seasons: 16, num_episodes: 356, runtime: 48)
Screenplay.create!(category: "TV Show", picture_url: "https://www.gstatic.com/tv/thumb/tvbanners/16944746/p16944746_b_v8_ac.jpg", title: "Black Mirror", description: "Featuring stand-alone dramas -- sharp, suspenseful, satirical tales that explore techno-paranoia -- 'Black Mirror' is a contemporary reworking of 'The Twilight Zone' with stories that tap into the collective unease about the modern world. Each story features its own cast of unique characters, including stars like Bryce Dallas Howard ('The Help'), Alice Eve, Gugu Mbatha-Raw, Tom Cullen and Jerome Flynn ('Game of Thrones'). Joe Wright, Dan Trachtenberg, and James Watkins are among the featured directors.", num_seasons: 5, num_episodes: 22, runtime: 41)
Screenplay.create!(category: "TV Show", picture_url: "https://www.gstatic.com/tv/thumb/tvbanners/17212373/p17212373_b_v8_ab.jpg", title: "Jeopardy", description: "'Jeopardy!'' is a classic game show -- with a twist. The answers are given first, and the contestants supply the questions. Three contestants, including the previous show's champion, compete in six categories and in three rounds (with each round's 'answers' being worth more prize money). In the third round, 'Final Jeopardy,'' the contestants can name their own jackpot -- as long as it's within the amount of money they've already earned. If a player finishes the second round with zero dollars, they are eliminated from 'Final Jeopardy.' The first version of 'Jeopardy!,' which aired from 1964 to 1975 on NBC, was hosted by Art Fleming. Alex Trebek is the current host; he began with the program in 1984 (at the start of its syndicated run).", num_seasons: 35, num_episodes: 8000, runtime: 24)
Screenplay.create!(category: "Film", picture_url: "https://www.gstatic.com/tv/thumb/v22vodart/17458/p17458_v_v8_ac.jpg", title: "Jumanji", description: "A magical board game unleashes a world of adventure on siblings Peter (Bradley Pierce) and Judy Shepherd (Kirsten Dunst). While exploring an old mansion, the youngsters find a curious, jungle-themed game called Jumanji in the attic. When they start playing, they free Alan Parrish (Robin Williams), who's been stuck in the game's inner world for decades. If they win Jumanji, the kids can free Alan for good -- but that means braving giant bugs, ill-mannered monkeys and even stampeding rhinos!", runtime: 104)
Screenplay.create!(category: "Film", picture_url: "https://www.gstatic.com/tv/thumb/v22vodart/11491197/p11491197_v_v8_ab.jpg", title: "Steve Jobs", description: "With public anticipation running high, Apple Inc. co-founders Steve Jobs (Michael Fassbender) and Steve 'Woz' Wozniak get ready to unveil the first Macintosh in 1984. Jobs must also deal with personal issues related to ex-girlfriend Chrisann Brennan and their young daughter Lisa. Eventually fired, Jobs launches NeXT Inc. and prepares to release a new computer model in 1988. Ten years later, Jobs is back at Apple Inc. and about to revolutionize the industry once again with the iMac.", runtime: 122)
Screenplay.create!(category: "Film", picture_url: "https://www.gstatic.com/tv/thumb/v22vodart/12465613/p12465613_v_v8_aa.jpg", title: "Sully", description: "On Jan. 15, 2009, Capt. Chesley 'Sully' Sullenberger (Tom Hanks) tries to make an emergency landing in New York's Hudson River after US Airways Flight 1549 strikes a flock of geese. Miraculously, all of the 155 passengers and crew survive the harrowing ordeal, and Sullenberger becomes a national hero in the eyes of the public and the media. Despite the accolades, the famed pilot now faces an investigation that threatens to destroy his career and reputation.", runtime: 96)
Screenplay.create!(category: "Film", picture_url: "https://www.gstatic.com/tv/thumb/v22vodart/12732076/p12732076_v_v8_aa.jpg", title: "Hush", description: "A deaf writer who retreated into the woods to live a solitary life must fight for her life in silence when a masked killer appears in her window.", runtime: 87)
Screenplay.create!(category: "Film", picture_url: "https://www.gstatic.com/tv/thumb/v22vodart/10980706/p10980706_v_v8_ab.jpg", title: "The Martian", description: "When astronauts blast off from the planet Mars, they leave behind Mark Watney (Matt Damon), presumed dead after a fierce storm. With only a meager amount of supplies, the stranded visitor must utilize his wits and spirit to find a way to survive on the hostile planet. Meanwhile, back on Earth, members of NASA and a team of international scientists work tirelessly to bring him home, while his crew mates hatch their own plan for a daring rescue mission.", runtime: 151)

five_review_titles = ["Wow, this is truly incredible!", "Pure perfection", "Oh HELLO! Good times are a comin'", "DOPE MAN, DOPE!", "Something really special"]
four_review_titles = ["Definitely well worth watching", "Really nice", "HOLLER! Beatiful characters alert!", "I loved this", "Really great watch"]
three_review_titles = ["Some flaws, but overall decent", "It passes the COVID time fine", "I quite enjoyed this", "It's OK", "Meh, not bad"]
two_review_titles = ["Watch if you have nothing better", "Scraping the barrel", "Characters are dull", "I fell asleep", "My nan acts better"]
one_review_titles = ["Don't waste your time", "Paint drying was better", "Would rather be sick in a ditch", "Talent? This is talent?", "JUST NOPE!"]

five_review_descriptions = ["Sometimes, you come across something that just makes you say WOW. This was one of those times.", "Pure perfection from start to finish. The camera angles, the plot, the characters, all of it was beautiful.", "Good times indeed yall. I would heartily recommend you watch this, YOU WILL NOT REGRET IT!", "Just DOPE. Like, really really good. Nice features, interesting plot-twists, everything you need really.", "Something really special. Perfect for my birthday surprise night in. I will be rewatching again and again!"]
four_review_descriptions = ["Even with its subdued tone, this is hugely engaging, gently stirring quirky humour into the story and characters.", "Tells the story simply, focussing on the details of human existence and reaching a very good ending", "I thought this was great. It was a bit long for me, but the story was incredible.", "Really great stuff. Pacy, zippy and great development and introspection", "Just what I wanted to watch on my wedding anniversary. Hubs loved it too!"]
three_review_descriptions = ["This was a fine watch. But just that. Fine. Not great, not bad. Just fine.", "There was a lot to like about this, but there was also a lot to dislike, so I'm going in the middle here.", "In fairness, I haven't even watched this yet LOL. I just wanted to get my critic status up a bit, so here we are. It's a 3 from me.", "It's OK. The characters are OK, the plot is OK, my life is OK. Who can complain?", "Hey, it could be a lot worse. Stick it on, have some tacos, maybe watch some minor league baseball afterwards. It's cool."]
two_review_descriptions = ["You've really got to love this type of thing to watch this. Not the best in its genre.", "Barrel officially scraped. The cream of the crop has all gone to Hollywood, so we're stuck here with these lame actors. LAME!!!", "Characters are dull, plot is laborious and it's not great. But it's not the worst thing out there, that's Breaking Bad.", "I fell asleep because it was so bad. The main actors are nice looking though, so I've given an extra star for that.", "I met an alien whilst watching this. He'd just come to earth from the planet Zerg, over 1,000 light years away. And we watched this, and he decided to go back. It was that bad. It was sad."]
one_review_descriptions = ["Urgh. Absolutely terrible. I only made it through about 5 minutes and then head to turn it off. Utter shite.", "After a while I stuck my head in a blender, which turned out to be less bad for my brain than watching this utter nonsense.", "I screamed constantly as I watched this. My neighbour came out to see what was the matter, took one look at the screen and was violently sick.", "I can't comprehend why somebody would waste their life putting this together. It's like, DUDE COME ON", "I didn't even watch this. But my neighbour Nance said it was terrible, and I always listen to what Nance says."]

10.times do
Review.create!(
  user_id: User.all.ids.sample, 
  screenplay_id: Screenplay.all.ids.sample, 
  title: five_review_titles.sample, 
  description: five_review_descriptions.sample, 
  rating: 5,
  created_at: Time.at(rand * Time.now.to_i))
end

10.times do
  Review.create!(
    user_id: User.all.ids.sample, 
    screenplay_id: Screenplay.all.ids.sample, 
    title: four_review_titles.sample, 
    description: four_review_descriptions.sample, 
    rating: 4,
    created_at: Time.at(rand * Time.now.to_i))
  end

10.times do
  Review.create!(
    user_id: User.all.ids.sample, 
    screenplay_id: Screenplay.all.ids.sample, 
    title: three_review_titles.sample, 
    description: three_review_descriptions.sample, 
    rating: 3,
    created_at: Time.at(rand * Time.now.to_i))
  end

10.times do
  Review.create!(
    user_id: User.all.ids.sample, 
    screenplay_id: Screenplay.all.ids.sample, 
    title: two_review_titles.sample, 
    description: two_review_descriptions.sample, 
    rating: 2,
    created_at: Time.at(rand * Time.now.to_i))
  end

10.times do
  Review.create!(
    user_id: User.all.ids.sample, 
    screenplay_id: Screenplay.all.ids.sample, 
    title: five_review_titles.sample, 
    description: four_review_descriptions.sample, 
    rating: 5,
    created_at: Time.at(rand * Time.now.to_i))
  end

200.times do
  Like.create!(review_id: Review.all.ids.sample, user_id: User.all.ids.sample)
end

ScreenplayGenre.create!(screenplay_id: Screenplay.find_by(title: "The Shawshank Redemption").id, genre_id: Genre.find_by(name: "Drama").id)
ScreenplayGenre.create!(screenplay_id: Screenplay.find_by(title: "Tiger King").id, genre_id: Genre.find_by(name: "Reality").id)
ScreenplayGenre.create!(screenplay_id: Screenplay.find_by(title: "Sleepless in Seattle").id, genre_id: Genre.find_by(name: "RomCom").id)
ScreenplayGenre.create!(screenplay_id: Screenplay.find_by(title: "You've Got Mail").id, genre_id: Genre.find_by(name: "RomCom").id)
ScreenplayGenre.create!(screenplay_id: Screenplay.find_by(title: "Cool Runnings").id, genre_id: Genre.find_by(name: "Comedy").id)
ScreenplayGenre.create!(screenplay_id: Screenplay.find_by(title: "8 Mile").id, genre_id: Genre.find_by(name: "Drama").id)
ScreenplayGenre.create!(screenplay_id: Screenplay.find_by(title: "Burn Notice").id, genre_id: Genre.find_by(name: "Action/Adventure").id)
ScreenplayGenre.create!(screenplay_id: Screenplay.find_by(title: "The Joker").id, genre_id: Genre.find_by(name: "Thriller").id)
ScreenplayGenre.create!(screenplay_id: Screenplay.find_by(title: "The Great British Baking Show").id, genre_id: Genre.find_by(name: "Reality").id)
ScreenplayGenre.create!(screenplay_id: Screenplay.find_by(title: "The Dark Knight").id, genre_id: Genre.find_by(name: "Action/Adventure").id)
ScreenplayGenre.create!(screenplay_id: Screenplay.find_by(title: "Mulan").id, genre_id: Genre.find_by(name: "Animation").id)
ScreenplayGenre.create!(screenplay_id: Screenplay.find_by(title: "The Greatest Showman").id, genre_id: Genre.find_by(name: "Musical").id)
ScreenplayGenre.create!(screenplay_id: Screenplay.find_by(title: "About Time").id, genre_id: Genre.find_by(name: "RomCom").id)
ScreenplayGenre.create!(screenplay_id: Screenplay.find_by(title: "Dan in Real Life").id, genre_id: Genre.find_by(name: "Drama").id)
ScreenplayGenre.create!(screenplay_id: Screenplay.find_by(title: "The Proposal").id, genre_id: Genre.find_by(name: "RomCom").id)
ScreenplayGenre.create!(screenplay_id: Screenplay.find_by(title: "Back to the Future").id, genre_id: Genre.find_by(name: "Action/Adventure").id)
ScreenplayGenre.create!(screenplay_id: Screenplay.find_by(title: "Napoleon Dynamite").id, genre_id: Genre.find_by(name: "Comedy").id)
ScreenplayGenre.create!(screenplay_id: Screenplay.find_by(title: "Fever Pitch").id, genre_id: Genre.find_by(name: "RomCom").id)
ScreenplayGenre.create!(screenplay_id: Screenplay.find_by(title: "Indiana Jones and the Last Crusade").id, genre_id: Genre.find_by(name: "Action/Adventure").id)
ScreenplayGenre.create!(screenplay_id: Screenplay.find_by(title: "Community").id, genre_id: Genre.find_by(name: "SitCom").id)
ScreenplayGenre.create!(screenplay_id: Screenplay.find_by(title: "Bob's Burgers").id, genre_id: Genre.find_by(name: "Animation").id)
ScreenplayGenre.create!(screenplay_id: Screenplay.find_by(title: "The Office").id, genre_id: Genre.find_by(name: "SitCom").id)
ScreenplayGenre.create!(screenplay_id: Screenplay.find_by(title: "New Girl").id, genre_id: Genre.find_by(name: "SitCom").id)
ScreenplayGenre.create!(screenplay_id: Screenplay.find_by(title: "Schitt's Creek").id, genre_id: Genre.find_by(name: "SitCom").id)
ScreenplayGenre.create!(screenplay_id: Screenplay.find_by(title: "Gilmore Girls").id, genre_id: Genre.find_by(name: "SitCom").id)
ScreenplayGenre.create!(screenplay_id: Screenplay.find_by(title: "Grey's Anatomy").id, genre_id: Genre.find_by(name: "Drama").id)
ScreenplayGenre.create!(screenplay_id: Screenplay.find_by(title: "Black Mirror").id, genre_id: Genre.find_by(name: "Anthology").id)
ScreenplayGenre.create!(screenplay_id: Screenplay.find_by(title: "Jeopardy").id, genre_id: Genre.find_by(name: "GameShow").id)
ScreenplayGenre.create!(screenplay_id: Screenplay.find_by(title: "Jumanji").id, genre_id: Genre.find_by(name: "Fantasy").id)
ScreenplayGenre.create!(screenplay_id: Screenplay.find_by(title: "Steve Jobs").id, genre_id: Genre.find_by(name: "Biography").id)
ScreenplayGenre.create!(screenplay_id: Screenplay.find_by(title: "Sully").id, genre_id: Genre.find_by(name: "Historical").id)
ScreenplayGenre.create!(screenplay_id: Screenplay.find_by(title: "Hush").id, genre_id: Genre.find_by(name: "Horror").id)
ScreenplayGenre.create!(screenplay_id: Screenplay.find_by(title: "The Martian").id, genre_id: Genre.find_by(name: "ScienceFiction").id)