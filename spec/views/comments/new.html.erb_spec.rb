require 'rails_helper'

RSpec.describe "comments/new", type: :view do
  before(:each) do
    assign(:comment, Comment.new(
      :description => "MyText",
      :idea => nil
    ))
  end

  it "renders new comment form" do
    render

    assert_select "form[action=?][method=?]", comments_path, "post" do

      assert_select "textarea[name=?]", "comment[description]"

      assert_select "input[name=?]", "comment[idea_id]"
    end
  end
end
