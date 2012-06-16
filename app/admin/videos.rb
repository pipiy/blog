ActiveAdmin.register Video do
  form :html => { :enctype => "multipart/form-data" } do |f|
    f.inputs "Upload" do
      f.input :file, :as => :file
      f.input :post, :collection => Post.all
    end

    f.buttons
  end
end

