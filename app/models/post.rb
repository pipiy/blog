class Post < ActiveRecord::Base
  attr_accessible :content, :title, :tag_list

  validates :tag_list, :presence => true

  acts_as_taggable

  has_many :photos
  accepts_nested_attributes_for :photos

  has_many :videos
  accepts_nested_attributes_for :videos
end

