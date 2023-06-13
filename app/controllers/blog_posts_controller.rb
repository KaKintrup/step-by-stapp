class BlogPostsController < ApplicationController
  before_action :authenticate_user!
  skip_before_action :authenticate_user!, only: [ :index, :show ]
  
  def index
    @posts = BlogPost.all
  end

  def new
    @post = BlogPost.new
  end

  def create
    @post = BlogPost.new(post_params)
    @post.user = current_user
    if @post.save
      redirect_to blog_posts_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
    @post = BlogPost.find(params[:id])
  end

  def update
    @post = BlogPost.find(params[:id])
    if @post.update(post_params)
      redirect_to blog_posts_path
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def show
    @post = BlogPost.find(params[:id])
  end

  def destroy
    @post = BlogPost.find(params[:id])
    @post.destroy
    redirect_to blog_posts_path, status: :see_other
  end

  private

  def post_params
    params.require(:blog_post).permit([:title, :text, :challenge_number, :descripton, :photo])
  end

end
