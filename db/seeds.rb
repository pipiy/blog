post = Post.new
post.title = "Article about javascript"
post.content = "How are you?"
post.tag_list = "programming, javascript"
post.save

post = Post.new
post.title = "Article about Ruby"
post.content = "How are you, Ruby?"
post.tag_list = "programming, ruby"
post.save

user = User.new
user.email = "admin@example.com"
user.password = "123456"
user.password_confirmation = "123456"
user.save

