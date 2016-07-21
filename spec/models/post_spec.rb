require 'rails_helper'

describe Post do
  it "is invalid without a title" do
    post = build(:post, title: nil)
    post.valid?
    expect(post).to be_invalid
  end

  it "is invalid without content" do
    post = build(:post, content: nil)
    post.valid?
    expect(post).to be_invalid
  end

  it "has an author" do
    post = build(:post)
    author = build(:user, first_name: "Sam")
    post.author = author
    expect(post.author.first_name).to eq "Sam"
  end
end
