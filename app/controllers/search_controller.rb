class SearchController < ApplicationController
  def index
    @posts = Post.search(params[:query])
    render :template => "posts/index"
  end
end
