class PostsController < ApplicationController
  before_action :authenticate_user!, only: %i[new create]

  def index
    @posts = Post.all
  end

  def create
    @post = current_user.posts.build(post_params)

    redirect_to root_path if @post.save
  end

  def new
    @post = current_user.posts.build
  end
end
