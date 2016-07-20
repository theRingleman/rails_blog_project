require 'rails_helper'

describe User do
  it "is invalid without an email address" do
    user = User.new(
    email: "",
    password: "password"
    )
    expect(user).to be_invalid
  end

  it "is valid with an email address" do
    user = User.new(
      email: "joe@example.com",
      password: "password",
      first_name: "Joe",
      last_name: "Example"
    )
    expect(user).to be_valid
  end

  it "is valid with a first name" do
    user = User.new(
      email: "joe@example.com",
      password: "password",
      first_name: "Joe",
      last_name: "Example"
    )
    expect(user).to be_valid
  end

  it "is invalid without a first name" do
    user = User.new(
      email: "joe@example.com",
      password: "password",
      first_name: "",
      last_name: "Example"
    )
    user.valid?
    expect(user.errors[:first_name]).to include("can't be blank")
  end

  it "is valid with a last name" do
    user = User.new(
      email: "joe@example.com",
      password: "password",
      first_name: "Joe",
      last_name: "Example"
    )
    expect(user).to be_valid
  end

  it "is invalid without a last name" do
    user = User.new(
      email: "joe@example.com",
      password: "password",
      first_name: "Joe",
      last_name: ""
    )
    user.valid?
    expect(user.errors[:last_name]).to include("can't be blank")
  end
end
