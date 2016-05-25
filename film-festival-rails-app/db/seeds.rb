role = ["user", "judge"]

20.times do
  User.create!(:username => Faker::Internet.user_name,
               :email => Faker::Internet.free_email,
               :password => 'password',
               :role => role.sample)
end

categories = ["Drama", "Comedy", "Thriller/Horror", "Musical", "Action/Adventure", "Documentary"]

categories.each do |category|
  Category.create!(:title => category)
end

titles = []
100.times { titles << Faker::Book.title }
titles = titles.uniq

50.times do
  Movie.create!(:title => titles.shift,
                :description => Faker::Lorem.paragraph,
                :category_id => Faker::Number.between(1, 6))
end

100.times do
  Review.create!(:description => Faker::Lorem.sentence,
                 :stars => Faker::Number.between(1, 5),
                 :user_id => Faker::Number.between(1, 20),
                 :movie_id => Faker::Number.between(1, 50))
end

50.times do
  Comment.create!(:body => Faker::Lorem.sentence,
                  :user_id => Faker::Number.between(1, 20),
                  :review_id => Faker::Number.between(1, 100))
end


