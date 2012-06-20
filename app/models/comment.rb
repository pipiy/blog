class Comment < ActiveRecord::Base
  attr_accessible :title, :comment

  include ActsAsCommentable::Comment

  belongs_to :commentable, :polymorphic => true

  default_scope :order => 'created_at ASC'

  belongs_to :user
end

