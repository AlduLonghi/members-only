class PostsController < ApplicationController
    before_action :authenticate_user!, only: [:new, :create]

    def index
        @posts = Post.all
    end

    def create
    end

    def new
        @post = current_user.posts.build
    end
end
