class CommentsController < ApplicationController
	def create
		@post = Post.find(params[:post_id])
		@comment = @post.comments.create!(params[:comment])
		#respond_to do |format|
		#	format.html { redirect_to @post }
		#	format.js
		redirect_to @post
		#end	
	end
end
