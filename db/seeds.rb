require 'faker'

# Create Posts
50.times do 
	Post.create!(
			title: Faker::Lorem.sentence,
			body:  Faker::Lorem.paragraph
			)
end
posts = Post.all 

Post.create!(title: 'My Test post title', body: 'My Test post body')

#Create Comments
100.times do 
	Comment.create!(
		post: posts.sample,
		body: Faker::Lorem.paragraph
		)
end

Comment.create!(post: posts.sample, body: 'My Test comment body')

puts "Seed finished"
puts "#{Post.count} posts created"
puts "#{Comment.count} comments created"
	
