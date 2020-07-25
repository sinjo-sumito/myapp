class PostsController < ApplicationController
  def index
    @post = Post.new
  end

  def create
    binding.pry
    Post.create(post_params)    
  end

  def edit
    
    @post = Post.find(params[:id])
  end

  def update
    
    post = Post.find(params[:id])
    post.update(post_params)
  end

  private
  def post_params
    params.require(:post).permit(:product_name, :work_name, :quantity, :comments).merge(user_id: current_user.id)
  end

  # def update_params
  #   params.require(:post).permit(:quantity, :comments).merge(user_id: current_user.id)
  # end
end  