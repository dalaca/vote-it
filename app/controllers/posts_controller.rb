class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update]
  def index
  	@post = Post.all
  end

  def new
  	@post = Post.new
  end

  def create
  	@post = Post.new(post_params)
    
 		if @post.save
    		flash[:notice] = "You created a new post"
        redirect_to root_path
		else
			render 'new'
 		end
  end

  def show
 # 	render 'show'
  end

  def edit
  end

  def update
    

    if @post.update(post_params)
      redirect_to root_path
    else
      render 'edit'
    end
  end

  private

  def post_params
    params.require(:post).permit!
  end

  def set_post
    @post = Post.find(params[:id])
  end

end
