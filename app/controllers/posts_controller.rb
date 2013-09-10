class PostsController < ApplicationController
  def index
  	@post = Post.all
  end

  def new
  	@post = Post.new
  end

  def create
  	@post = Post.new
    
 		if @post.save
 			redirect_to @post
 		else
 			render 'new'
 		end
  end

  def show
  	@post = Post.find(params[:id])
  	render 'show'
  end

  def update
  	@post = Post.find(params[:id])

  	if @post.update(params[:post])
  		redirect_to @post
  	else
  		render 'edit'
  	end
  end

  def edit
  	@post = Post.find(params[:id])
  end

end
