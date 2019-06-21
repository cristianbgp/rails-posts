class PostsController < ApplicationController
  def index
    @posts = Post.includes(:user, :media, [likes: :user], [comments: :user]).all
  end
end