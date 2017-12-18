require 'rails_helper'

RSpec.describe "posts/edit", type: :view do
  before(:each) do
    @post = assign(:post, Post.create!(
      :attachment => "MyString",
      :content => "MyText",
      :user => nil
    ))
  end

  it "renders the edit post form" do
    render

    assert_select "form[action=?][method=?]", post_path(@post), "post" do

      assert_select "input#post_attachment[name=?]", "post[attachment]"

      assert_select "textarea#post_content[name=?]", "post[content]"

      assert_select "input#post_user_id[name=?]", "post[user_id]"
    end
  end
end
