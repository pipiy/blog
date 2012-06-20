FactoryGirl.define do
  factory :post do
    title "Why Smart People Are Stupid"
    content "Here is a simple arithmetic question"
    tag_list "programming, mind, ruby"

    after(:build) do |post|
      post.photos.build(:file => File.open("./public/demo.jpg"))
    end
  end
end

