class Photo < ActiveRecord::Base
  attr_accessible :file, :post_id
  belongs_to :post

  has_attached_file :file, :styles => {
    :medium => "300x500>",
    :thumb => "100x100>"
  }
end

