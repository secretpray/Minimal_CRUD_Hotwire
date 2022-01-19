class PostsController < ApplicationController
  before_action :set_post, only: %i[ show edit update destroy ]

  def index
    @posts = Post.all.order(created_at: :desc)
  end

  def show; end


  def new
    @post = Post.new
  end

  def edit; end

  def create
    @post = Post.new(post_params)
    if @post.save
      @post.update_counter
    end
  end

  def update
    respond_to do |format|
      if @post.update(post_params)
        format.turbo_stream
      else
        format.turbo_stream
      end
    end
  end

  def destroy
    @post.destroy
    @post.update_counter
  end

  private
    def set_post
      @post = Post.find(params[:id])
    end

    def post_params
      params.require(:post).permit(:title, :content, :vote)
    end
end
