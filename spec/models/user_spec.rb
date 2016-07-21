require 'rails_helper'

describe User do
  it "has a valid factory" do
    expect(FactoryGirl.build(:user)).to be_valid
  end

  it "is invalid without an email address" do
    user = FactoryGirl.build(:user, email: nil)
    expect(user).to be_invalid
  end

  it "is invalid without a first name" do
    user = FactoryGirl.build(:user, first_name: nil)
    user.valid?
    expect(user.errors[:first_name]).to include("can't be blank")
  end

  it "is invalid without a last name" do
    user = FactoryGirl.build(:user, last_name: nil)
    user.valid?
    expect(user.errors[:last_name]).to include("can't be blank")
  end

  it "is invalid with a duplicate email address" do
    FactoryGirl.create(:user, email: "joe@example.com")
    user = FactoryGirl.build(:user, email: "joe@example.com")
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
      user = FactoryGirl.build(:user)
      expect(user.full_name).to eq "#{user.first_name} #{user.last_name}"
    end
  end
end
