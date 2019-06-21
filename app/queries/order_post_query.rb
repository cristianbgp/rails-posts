class OrderPostQuery
    def top_likes
      Post.joins(:likes).group('posts.id').order('count(likes.id) DESC')
    end
  end 