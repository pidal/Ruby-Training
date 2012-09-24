#encoding: utf-8
require_relative '8c'
module Blog

	class Post
		# include Tweetable
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

		def insert_random_comment 
			@comments << Comment.new(user: 'Me', body: 'A random comment')
		end
	end

	class Comment
		include Tweetable
		attr_reader :user, :body

		def initialize options
			@user = options[:user]
			@body = options[:body]
		end
	end

end