class BlogPostsController < ApplicationController
  def index
    @posts = BlogPost.all
  end

  def new
    @post = BlogPost.new
  end

  def create
    @post = BlogPost.new(post_params)
    @post.user = current_user
    raise
    if @post.save
      redirect_to blog_posts_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def post_params
    params.require(:blog_post).permit([:title, :text, :challenge_id])
  end

end

