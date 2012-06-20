require 'spec_helper'

describe SearchController do
  context "when we have few posts" do
    let!(:ruby_post) { create(:post, :title => "about ruby") }
    let!(:cpp_post) { create(:post, :title => "cpp is the best programming lang") }
    let!(:sql_post) { create(:post, :title => "database lang sql") }

    context "on search" do
      context "find with one possible result" do
        before { get :index, :query => "ruby" }

        it { assigns(:posts).should == [ruby_post] }

        it { should render_template('posts/index') }
      end

      context "find with few possible results" do
        before { get :index, :query => "lang" }

        it { assigns(:posts).should == [cpp_post, sql_post] }

        it { should render_template('posts/index') }
      end
    end
  end
end

