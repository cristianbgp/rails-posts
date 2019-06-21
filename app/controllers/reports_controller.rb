class ReportsController < ApplicationController
  def index
  end

  def top_user_posts
    @users = OrderUserQuery.new(:posts).top_posts
  end

  def top_user_likes
    @users = OrderUserQuery.new({ posts: :likes }).top_likes
  end

  def top_posts
    @posts = OrderPostQuery.new.top_likes
  end
end
