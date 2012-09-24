class Post
	attr_reader :author, :title, :body, :comments

	def initialize options
		@author   = options[:author]
		@title    = options[:title]
		@body     = options[:body]
		@comments = options[:comments] || []
	end

	def insert_comment *comments #splat! muchas cosas se pueden hacer con esto
		comments.each { |c| @comments << c }
	end

end

class Comment
	attr_reader :user, :body

	def initialize options
		@user = options[:user]
		@body = options[:body]
	end


end

post = Post.new author: 'Alfonso',
				title:  'Lipsum', 
				body:   'My message goes here'
				

com1 = Comment.new 	user: 'Jeffrey Way', 
					body: 'Nice post, ill like it'
		  
com2 = Comment.new	user: 'Alfonso Pidal',
	    	 		body: 'Hola Jeffrey!!'

post.insert_comment com1,com2
p post.inspect 

