class Video < ActiveRecord::Base
  attr_accessible :file, :post_id
  belongs_to :post

  has_attached_file :file
end

