class StaticPagesController < ApplicationController

def home
	@post = Post.new
	@posts = Post.all
	@someblogs = Blog.last(3)
	@postcomment = Postcomment.new
end

def aboutus
	
end

def faq
	
end

def thankyou
	
end

def admindashboard
	@blogs = Blog.last(10)
	@users = User.last(10)
	@groups = Group.last(10)
end

end