class HomeController < ApplicationController
  def index
    @posts = Post.all.select {|p| p.photos.present? }
  end
end

