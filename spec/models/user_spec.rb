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

  it "is invalid with a duplicate email address" do
    User.create(
    email: "joe@example.com",
    password: 'password',
    first_name: "Joe",
    last_name: "Smith"
    )
    user = User.new(
    email: "joe@example.com",
    password: "password",
    first_name: "Joe",
    last_name: "Snot"
    )
    user.valid?
    expect(user.errors[:email]).to include("has already been taken")
  end

  describe "#by_letter" do
    before :each do
      @smith = User.create(
        email: "joe@example.com",
        password: 'password',
        first_name: "Joe",
        last_name: "Smith"
      )
      @snape = User.create(
        email: "snape@example.com",
        password: 'password',
        first_name: "Serverous",
        last_name: "Snape"
      )
      @johnson = User.create(
        email: "joel@example.com",
        password: 'password',
        first_name: "Jon",
        last_name: "Johnson"
      )
    end

    context "with matching letters" do
      it "returns a sorted array by the first letter of the last name" do
        expect(User.by_letter("S")).to eq [@smith, @snape]
      end
    end

    context "with non matching letters" do
      it "omits results that do not match" do
        expect(User.by_letter("S")).not_to include @johnson
      end
    end
  end

  describe "#full_name" do
    it "returns a string with the users full name" do
      user = User.new(
        email: "joe@example.com",
        password: "password",
        first_name: "Joe",
        last_name: "Example"
      )
      expect(user.full_name).to eq "Joe Example"
    end
  end
end
