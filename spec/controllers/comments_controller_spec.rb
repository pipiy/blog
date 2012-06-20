require 'spec_helper'

describe CommentsController do
  context "on create new comment" do
    let!(:p) { create(:post) }

    before do
      post :create,
        :post_id => p.id,
        :comment => {
          :title => "good article",
          :comment => "good article again"
        }
    end

    it { p.reload.comments.should be_present }

    it { should redirect_to(post_path(p)) }
  end
end

