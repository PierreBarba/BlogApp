# # This file should contain all the record creation needed to seed the database with its default values.
# # The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
# #
# # Examples:
# #
# #   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
# #   Character.create(name: "Luke", movie: movies.first)
# first_user = User.create(name: 'Sergio Perez', photo: 'https://upload.wikimedia.org/wikipedia/commons/7/7a/Sergio_P%C3%A9rez_2019_%28cropped%29.jpg', bio: 'Sergio Michel Pérez Mendoza (Guadalajara, Jalisco, Mexico; January 26, 1990), also known as Checo Pérez, is a Mexican racing driver. He is currently a member of Escudería Telmex.​ Since 2021, he has been a driver for Red Bull in Formula 1, finishing third in 2022.​ He began his career in 2004 and was the champion of the British Formula 3 in 2007. In 2009, he made his debut in the GP2 Series and the following year, he was the runner-up.', posts_counter: 0)
# second_user = User.create(name: 'Lewis Hamilton', photo: ' https://upload.wikimedia.org/wikipedia/commons/thumb/a/ac/Lewis_Hamilton_2022_S%C3%A3o_Paulo_Grand_Prix_%2852498120773%29_%28cropped%29.jpg/450px-Lewis_Hamilton_2022_S%C3%A3o_Paulo_Grand_Prix_%2852498120773%29_%28cropped%29.jpg', bio: 'Lewis Carl Davidson Larbalestier Hamilton​ (Stevenage, Hertfordshire; January 7, 1985) is a British racing driver. He competed in Formula 1 from 2007 to 2012 as a driver for McLaren, with whom he won the championship in 2008 and was the runner-up in 2007. Since 2013, he has been a driver for Mercedes, winning the championship in 2014, 2015, 2017, 2018, 2019, 2020, matching Michael Schumachers record of 7 World Championships, and was the runner-up in 2016 and 2021. He has won more than 103 Grand Prix races throughout his Formula 1 career, surpassing the record for most victories in the history of the competition in 2020.', posts_counter: 0)
# third_user = User.create(name: 'Max Verstappen', photo: 'https://upload.wikimedia.org/wikipedia/commons/thumb/8/8f/Max_Verstappen_2017_Malaysia_1.jpg/640px-Max_Verstappen_2017_Malaysia_1.jpg', bio: 'Max Emilian Verstappen Hasselt, September 30, 1997) is a Dutch racing driver born in Belgium. He was the champion of the World Karting Championship in 2013. He has been a Formula 1 driver since 2015, debuting with the Toro Rosso team. He has been a two-time champion of the Formula 1 World Drivers Championship in 2021 and 2022, and third in 2019 and 2020 with Red Bull Racing, where he has been racing since 2016.', posts_counter: 0)
# fourth_user = User.create(name: 'Charles Leclerc', photo: 'https://upload.wikimedia.org/wikipedia/commons/5/5e/Charles_Leclerc_portrait_2020.png', bio: 'Charles Marc Hervé Perceval Leclerc (pronounced in French: / ʃaʁl ləklɛʁ /, Monte Carlo, Monaco; October 16, 1997), better known as Charles Leclerc, is a Monegasque racing driver. He was the champion of the Karting World Championship in 2011, GP3 Series in 2016, and Formula 2 in 2017 (both as a debutant). He made his debut in Formula 1 with the Sauber team in 2018, and since 2019 he has been a driver for Scuderia Ferrari, finishing as the runner-up in the world championship in 2022.', posts_counter: 0)
# fifth_user = User.create(name: 'Fernando Alondo', photo: 'https://upload.wikimedia.org/wikipedia/commons/thumb/0/0f/Fernando_Alonso_NASCAR_Media_Tour_2018.jpg/450px-Fernando_Alonso_NASCAR_Media_Tour_2018.jpg', bio: 'Fernando Alonso Díaz (Oviedo, Asturias; July 29, 1981) is a Spanish racing driver, awarded with the Prince of Asturias Award in 2005. He has won the Formula One World Championship twice in 2005 and 2006, finished as runner-up in 2010, 2012, and 2013, and achieved a third place in 2007. He was the champion of the FIA World Endurance Championship in 2019, the 24 Hours of Le Mans in 2018 and 2019, the 2019 24 Hours of Daytona, and the World Karting Championship in 1996.', posts_counter: 0)

# post_first = Post.create(author_id: 1, title: 'soft tires', text:'Taking care of the tires during the race is vital to being a great driver', comments_counter: 1, likes_counter:2)
# post_second = Post.create(author_id: 1, title: 'attack minister', text:'This year I plan to compete to be champion', comments_counter: 1, likes_counter:1)
# post_third = Post.create(author_id: 1, title: 'I will give my support to my team', text:'I will give all my support to my team, but if I see that they give me the same support', comments_counter: 1, likes_counter:2)

# post_fourth = Post.create(author_id: 2, title: 'the rb19 is the fastest car ive ever seen', text:'when you see the rb19 go by next to you it is impossible to compete it is the fastest car I have ever seen', comments_counter: 1, likes_counter:1)
# post_fifth = Post.create(author_id: 2, title: 'I will postpone the contract', text:'If I see that Mercedes does not face Redbull, I think my future is in doubt.', comments_counter: 1, likes_counter:2)
# post_sixth = Post.create(author_id: 2, title: 'I will check my future', text:'i dont know where is my future now', comments_counter: 1, likes_counter:2)

# post_seventh = Post.create(author_id: 3, title: 'im not here to lose', text:'They didnt teach me to lose, Im always here to win', comments_counter: 1, likes_counter:2)
# post_eighth = Post.create(author_id: 3, title: 'It was easy to win when you have everything in the car', text:'the work with the car has been fabulous it feels good', comments_counter: 1, likes_counter:1)
# post_ninth = Post.create(author_id: 3, title: 'suitable set', text:'driving is horrible when you cant find the right set', comments_counter: 1, likes_counter:1)

# post_tenth = Post.create(author_id: 4, title: 'we are not so bad', text:'the team knows what we failed in, we just have to work on it', comments_counter: 1, likes_counter:1)
# post_eleventh = Post.create(author_id: 4, title: 'the team needs to prioritize what to work on', text:'the failures do not stop appearing although we are optimistic because we did not do so badly in this race', comments_counter: 2, likes_counter:1)
# post_twelfth = Post.create(author_id: 4, title: 'we had to start from scratch', text:'although we had to start from behind the grid due to the penalty we were able to overcome', comments_counter: 1, likes_counter:1)

# post_thirteenth = Post.create(author_id: 5, title: 'aston martin', text:'It was the best decision I could make to come to Aston', comments_counter: 2, likes_counter:1)
# post_fourteenth = Post.create(author_id: 5, title: 'the car is lovely to drive', text:'car looks good feels good is a love to drive', comments_counter: 1, likes_counter:1)
# post_fifteenth = Post.create(author_id: 5, title: 'we have to keep pushing', text:'We know that the teams do not stop advancing in the updates, much less', comments_counter: 1, likes_counter:1)

# comment_first= Comment.create(author_id: 1, post_id: 1, text: 'you are the best the king of the tires')
# comment_second = Comment.create(author_id: 1, post_id: 2, text: 'yeah¡ just do it chequito bebe')
# comment_third = Comment.create(author_id: 1, post_id: 3, text: 'good think')

# comment_fourth = Comment.create(author_id: 2, post_id: 4, text: 'you can do it hamilton¡')
# comment_fifth = Comment.create(author_id: 2, post_id: 5, text: 'think all the options hamilton¡ you are the best in the f1¡')
# comment_sixth = Comment.create(author_id: 2, post_id: 6, text: 'Lewis its just a season come on dont do that')

# comment_seventh = Comment.create(author_id: 3, post_id: 7, text: 'the champion talking¡ cheers¡')
# comment_eighth = Comment.create(author_id: 3, post_id: 8, text: 'yes when the car its a perfect machine its asome')
# comment_ninth = Comment.create(author_id: 3, post_id: 9, text: 'dont matter you are the best Max')

# comment_tenth = Comment.create(author_id: 4, post_id: 10, text: 'ferrari its comming ')
# comment_eleventh = Comment.create(author_id: 4, post_id: 11, text: 'i hope that ferrari found the problem with the car soon')
# comment_twelfth = Comment.create(author_id: 4, post_id: 12, text: 'charles you can just focuse on the race')

# comment_thirteenth = Comment.create(author_id: 5, post_id: 13, text: 'alphine cry¡ hahaha')
# comment_fourteenth = Comment.create(author_id: 5, post_id: 14, text: 'you are the best fernando¡')
# comment_fifteenth = Comment.create(author_id: 5, post_id: 15, text: 'mercedes never let to push come on aston martin¡ dont let to push yourself')   