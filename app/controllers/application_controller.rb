class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :get_tags

  protected

  def get_tags
    @tags = Post.tag_counts_on(:tags)
  end
end
