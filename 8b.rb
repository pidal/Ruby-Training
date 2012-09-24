#encoding: utf-8

require_relative "8" # requires 8.rb in the same folder
require_relative "8c"
# require "" # This is for requiring gems!

post = Blog::Post.new author: 'Alfonso Pidal',
						title: 'Lipsum',
						body: 'Un poco de lipsum'

# post.insert_random_comment

# p post

# 3.times do
# 	post.insert_random_comment	
# end

# post.tweet

# post.comments.each { |c| c.tweet }

post.extend Tweetable # añade el tweeteable de 8c solo a este objeto,
					  # es decir, solo el objeto post puede tweetear
					  # post2, post3, etc... post2 = Blog::Post.new
					  # no puede

post.tweet