# app/controllers/posts_controller.rb
class PostsController < ApplicationController
  def index
    @posts = Post.all  # Убедитесь, что эта строка выполняется без ошибок
  end
end
