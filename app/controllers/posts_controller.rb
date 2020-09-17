class PostsController < ApplicationController
    before_action :authenticate_user!, only: [:new, :create]

    def index
        @posts = Post.all
    end

    def create
        @post = current_user.posts.build(post_params)

        if @post.save
            redirect_to root_path
        end
    end

    def new
        @post = current_user.posts.build
    end
end
