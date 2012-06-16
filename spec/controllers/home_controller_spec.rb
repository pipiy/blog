require 'spec_helper'

describe HomeController do
  context "on view the main page" do
    let!(:p) { create(:post) }

    before { get :index }

    it { should respond_with(:success) }

    it { should render_template(:index) }

    it { assigns(:posts).should == [p] }
  end
end

