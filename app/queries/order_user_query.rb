class OrderUserQuery
    attr_reader :relation
  
    def initialize(join_data)
      @relation = User.joins(join_data).group('users.id')
    end
  
    ['posts', 'likes'].each do |resource|
      define_method "top_#{resource}" do
        relation.order("count(#{resource}.id) DESC")
      end
    end
  end 