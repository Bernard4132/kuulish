class StaticPagesController < ApplicationController

def home
	@post = Post.new
	@posts = Post.all
	@postcomment = Postcomment.new
end

end