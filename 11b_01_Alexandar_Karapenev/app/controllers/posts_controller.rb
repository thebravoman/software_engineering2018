class PostsController < ApplicationController

	http_basic_authenticate_with name: "root", password:"1234", except: [:index, :show]

	def index 
		@posts = Post.all 
	end	

	def new

	end	


	def edit
		@post = Post.find(params[:id]);
	end	

	def show
		@post = Post.find(params[:id]);
	end	

	def update
		@post = Post.find(params[:id]);
	
		@post.update(post_params)
		redirect_to @post
	end	

	def create

		@post = Post.new(post_params)

		@post.save
		redirect_to @post

	end	

	def destroy
		@post = Post.find(params[:id])
		@post.destroy

		redirect_to post_params
	end	

	private def post_params
		params.require(:post).permit( :title, :body)
	end	


end
