class PostsController < ApplicationController
  def index
    @posts = Post.order(created_at: :desc).paginate(page: params[:page], per_page: 2)
  end

  def show
    @post = Post.find(params[:id])
  end
end
