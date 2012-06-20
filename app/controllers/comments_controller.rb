class CommentsController < ApplicationController
  before_filter :find_post

  def create
    @post.comments.create(params[:comment])

    redirect_to @post
  end

  private

  def find_post
    @post = Post.find(params[:post_id])
  end
end
