users = [
 {:username=>"kane",:email=>"susie.rempel@gmail.com",:password=>"password",:role=>"judge"},
 {:username=>"austin",:email=>"bernardo@hotmail.com",:password=>"password",:role=>"judge"},
 {:username=>"jaylen.feil",:email=>"kari@yahoo.com",:password=>"password",:role=>"judge"},
 {:username=>"sheila",:email=>"linwood.rempel@yahoo.com",:password=>"password",:role=>"judge"},
 {:username=>"kaley",:email=>"merl@yahoo.com",:password=>"password",:role=>"judge"},
 {:username=>"lea.gibson",:email=>"kaandra_frami@yahoo.com",:password=>"password",:role=>"judge"},
 {:username=>"gennaro",:email=>"mireya.robel@gmail.com",:password=>"password",:role=>"judge"},
 {:username=>"liana",:email=>"ivory@yahoo.com",:password=>"password",:role=>"judge"},
 {:username=>"skye_connelly",:email=>"jennifer.hagenes@yahoo.com",:password=>"password",:role=>"judge"},
 {:username=>"gene_nolan",:email=>"candice.prosacco@gmail.com",:password=>"password",:role=>"judge"},
 {:username=>"arielle",:email=>"antonio@hotmail.com",:password=>"password",:role=>"user"},
 {:username=>"helen.langworth",:email=>"arjun@gmail.com",:password=>"password",:role=>"user"},
 {:username=>"karen",:email=>"abbie_dach@gmail.com",:password=>"password",:role=>"user"},
 {:username=>"ramon_bednar",:email=>"roie@yahoo.com",:password=>"password",:role=>"user"},
 {:username=>"valerie",:email=>"althea.waelchi@yahoo.com",:password=>"password",:role=>"user"},
 {:username=>"marjorie",:email=>"jaron@hotmail.com",:password=>"password",:role=>"user"},
 {:username=>"beryl.trantow",:email=>"antonetta.denesik@hotmail.com",:password=>"password",:role=>"user"},
 {:username=>"cathy_walter",:email=>"modesto@hotmail.com",:password=>"password",:role=>"user"},
 {:username=>"anthony",:email=>"ru@hotmail.com",:password=>"password",:role=>"user"},
 {:username=>"meaghan",:email=>"jackie@yahoo.com",:password=>"password",:role=>"user"},
 {:username=>"penelope",:email=>"michaela_mertz@hotmail.com",:password=>"password",:role=>"user"},
 {:username=>"name",:email=>"cleo_murazik@hotmail.com",:password=>"password",:role=>"user"},
 {:username=>"vivien",:email=>"rachelle@hotmail.com",:password=>"password",:role=>"user"},
 {:username=>"nolan",:email=>"mckayla@gmail.com",:password=>"password",:role=>"user"},
 {:username=>"cruz",:email=>"audreanne_von@yahoo.com",:password=>"password",:role=>"user"},
 {:username=>"jana",:email=>"stone@yahoo.com",:password=>"password",:role=>"user"},
 {:username=>"nolan_lynch",:email=>"august@hotmail.com",:password=>"password",:role=>"user"},
 {:username=>"zetta_boyer",:email=>"alf@hotmail.com",:password=>"password",:role=>"user"},
 {:username=>"sherman.swaniawski",:email=>"esperanza@gmail.com",:password=>"password",:role=>"user"},
 {:username=>"pierre_cummings",:email=>"jaylon_marks@gmail.com",:password=>"password",:role=>"user"}
]

users.each{|user| User.create(user)}

categories = ["Drama", "Comedy", "Thriller/Horror", "Musical", "Action/Adventure", "Documentary"]
categories.each do |category|
  Category.create(title: category)
end

titles = ["In Dubious Battle", "The Mirror Crack'd from Side to Side", "A Monstrous Regiment of Women",
 "Absalom, Absalom!","The Wives of Bath","In a Glass Darkly","Many Waters","Far From the Madding Crowd",
 "His Dark Materials","The Yellow Meads of Asphodel","An Evil Cradling","Unweaving the Rainbow",
 "Oh! To be in England","All the King's Men","This Lime Tree Bower","A Darkling Plain",
 "Look Homeward, Angel","Fair Stood the Wind for France","Moab Is My Washpot", "Ring of Bright Water",
 "The Proper Study","That Hideous Strength","A Swiftly Tilting Planet","Gone with the Wind",
 "A Confederacy of Dunces","East of Eden","In a Dry Season","It's a Battlefield","O Jerusalem!",
 "Sleep the Brave","Terrible Swift Sword","The Golden Bowl","Clouds of Witness",
 "I Sing the Body Electric", "When the Green Woods Laugh","The Painted Veil",
 "By Grand Central Station I Sat Down and Wept","The Little Foxes","Look to Windward",
 "The House of Mirth","A Summer Bird-Cage","The Millstone", "If I Forget Thee Jerusalem", "Recalled to Life",
 "Fear and Trembling", "What's Become of Waring", "Frequent Hearses", "The Torment of Others",
 "Surprised by Joy", "An Acceptable Time", "The Moon by Night", "Pale Kings and Princes",
 "Consider Phlebas","Mother Night","A Time to Kill","Shall not Perish","|In Death Ground","The Moving Toyshop","Those Barren Leaves, Thrones, Dominations","The Daffodil Sky","The Doors of Perception",
 "Tiger! Tiger! (Rudyard Kipling)","The Last Enemy","The Golden Apples of the Sun","The Other Side of Silence","The World, the Flesh and the Devil (1891 novel)","Nectar in a Sieve","Infinite Jest",
 "Arms and the Man","Stranger in a Strange Land","O Pioneers!","The Lathe of Heaven","Alone on a Wide, Wide Sea",
 "Cabbages and Kings","Blithe Spirit","The Wind's Twelve Quarters","Such, Such Were the Joys","No Highway",
 "The Curious Incident of the Dog in the Night-Time"]

descriptions = [
  "In a world of difficul social interactions, one woman decides to throw up her arms and go on with her life. This is her story.",
  "Jennifer Lawrence stars with Bradley Cooper and Robert De Niro as a woman who builds a business dynasty in David O. Russell's wild story about a family across four generations.",
  "From Nicholas Sparks, the best-selling author of The Notebook and Safe Haven, comes this heart-lifting romance about how far we go to keep the hope of love alive.",
  "Witness the origin story of Wade Wilson, who adopts the alter ego Deadpool after a rogue experiment leaves him with accelerated healing powers...and a dark, twisted sense of humor.",
  "In the biggest and most awesome Kung Fu Panda movie yet, Po must train a village of fun-loving, clumsy pandas to defeat a supernatural villain that threatens to destroy Kung Fu.",
  "An epic journey into the world of dinosaurs where an Apatosaurus named Arlo makes an unlikely human friend."
]

reviews = [
  "This is a masterpiece. A timeless masterpiece. Initially, I didn't like this film all that much - I found it rather over-hyped and boring. This was until the advent of DVD, which gave me the feature I needed for this sort of film: subtitles. Once I switched them on and heard (read) every last word of Brando's ramblings and other characters ramblings, I grew a true appreciation for this epic.",
  "To make a true epic, you need all of three following ingredients working in near perfect harmony. For screenwriters who come across this, take the following pointers on board: 1) Contrasting Characters: Good films have some character distinction, but most fall rather flat because the core of each character is the same.",
  "2) Transformation: The central character(s) must undergo a transformation, resulting in them being almost unrecognizable by the end of the film. By putting them into situations, the character's character must not only influence the outcome of the situation; it must also have a lasting impact on the character. Consider Michael at the wedding and compare that to the Michael we see at the end of the film. Again, many films try, but most fail because they come up with unreal (literally, not praisingly) or simply moronic transformations (eg, Wall Street).",
  "I feel that this film has not dated all that much and has tremendous re-watch-ability.",
  "With superb acting by especially Al Pacino as Mike Corleone and Marlon Brando as Don Vito corleone this movie shows how one of the head mafia families in New York works, it gives a detailed picture of how their business runs and what kinda chances they got to take on their business, for example their denial to step inside the narcotic business brings on alot of troubles, but also it shows what kinda sacrifices they make, every day could be their last day..",
  "This movie is strong, good script, great casting, excellent acting, and over the top directing. It is hard to fine a movie done this well, it is 29 years old and has aged well. Even if the viewer does not like mafia type of movies, he or she will watch the entire film, the audiences is glued to what will happen next as the film progresses. Its about, family, loyalty, greed, relationships, and real life. This is a great mix, and the artistic style make the film memorable.",
  "I enjoyed watching these movies so much, I wish I had seen them much before then I did. Its amazing to see how the Part-III was made 18 years later the part-I was made and everything looks so continuous if watch them together.",
  "As a movie watcher, I tend to become bored with the constant, overdone, overdrawn, underplayed, overdramatized performance and production quality of most Hollywood films. It's a trait that in recent years has sadly driven me away from most big budget American films. A decent idea will become mangled by the money making machine that is Hollywood, hoping to pump the most raw cash they can out of it before it drops dead in the street.",
  "As a film though, this is amazing. A true lasting legacy in story telling and now cinema. Bravo Mr. Jackson.",
  "I've never seen a series like this. A trilogy of movies created with such love and care and utter perfection of craft that you can't help but walk away and wonder how did Peter Jackson make this possible? I have always loved the original 'Star Wars' and 'Indiana Jones' series for their epic storytelling, and just for just fitting in as a great moment in cinema. This should be, will be, remembered with as much revered fondness for generations to come. They do not make films like these anymore.",
  "I will miss looking forward to a new movie, but these movies provide hope that high-quality films can still be made without special effects taking over a story, bathroom humor, or a soundtrack. George Lucas could learn a lot from these films about how not to alienate the fanbase.",
  "However, the real acting triumph of the film is Elijah Wood as Frodo Baggins. He continues his descent into corruption with an incredible talent that many could not pull off. Wood's performance is so critical to the film because it determines the ring's power to corrupt, which, needless to say, is absolute.",
  "That all being said, I must say that The Lord of the Rings is an amazingly powerful visual experience. Not even just a visual experience. Peter Jackson has crafted one of the finest written pieces of our era into THE quintessential epic. He supplements the brilliant storytelling of JRR Tolkien with one of the most awe-inspiring collection of films ever created."
]

titles.each do |title|
  Movie.create(:title => title,
                :description => descriptions.sample,
                :category_id => rand(1..6))
end

100.times do
  Review.create(:description => reviews.sample,
                 :stars => rand(1..5),
                 :user_id => rand(1..25),
                 :movie_id => rand(1..50))
end

50.times do
  Comment.create(:body => reviews.sample,
                  :user_id => rand(1..25),
                  :review_id => rand(1..80))
end
