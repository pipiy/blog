class CreateVideos < ActiveRecord::Migration
  def change
    create_table :videos do |t|
      t.has_attached_file :file
      t.belongs_to :post

      t.timestamps
    end
  end
end
