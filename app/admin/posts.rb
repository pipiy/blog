ActiveAdmin.register Post do
  form :html => { :enctype => "multipart/form-data" } do |f|
    f.inputs do
      f.input :title
      f.input :content
    end

    f.buttons
  end
end

