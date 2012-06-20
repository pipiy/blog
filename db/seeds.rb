post = Post.new
post.title = "Article about javascript"
post.content = "How are you?"
post.tag_list = "programming, javascript"
post.photos.build(:file => File.open("#{Rails.root}/public/demo.jpg"))
post.save

post = Post.new
post.title = "Article about Ruby"
post.content = "How are you, Ruby?"
post.tag_list = "programming, ruby"
post.photos.build(:file => File.open("#{Rails.root}/public/demo1.jpg"))
post.save

post = Post.new
post.title = "Article about CPP"
post.content = "How are you, CPP?"
post.tag_list = "programming, cpp"
post.photos.build(:file => File.open("#{Rails.root}/public/demo2.jpg"))
post.videos.build(:file => File.open("#{Rails.root}/public/demo.mp4"))
post.save

user = User.new
user.email = "admin@example.com"
user.password = "123456"
user.password_confirmation = "123456"
user.save

