require 'spec_helper'

describe User do

  before { @user = User.new(name: "Example User", email: "user@example.com") }

  subject { @user }

  it { should respond_to(:name) }
  it { should respond_to(:email) }

  it { should be_valid }

  describe "name" do

    describe "when not present" do
      before { @user.name = " " }
      it { should_not be_valid }
    end

    describe "when too long" do
      before { @user.name = "a" * 51 }
      it { should_not be_valid }
    end

  end

  describe "email" do

    describe "when not present" do
      before { @user.email = " " }
      pry
      it { should_not be_valid }
    end

    describe "format" do

      describe "invalid" do
        it "should be invalid" do
          addresses = %w[user@foo,com user_at_foo.org example.user@foo.
                       foo@bar_baz.com foo@bar+baz.com]
          addresses.each do |invalid_address|
            @user.email = invalid_address
            expect(@user).not_to be_valid
          end
        end
      end

      describe "valid" do
        it "should be valid" do
          addresses = %w[user@foo.COM A_US-ER@f.b.org frst.lst@foo.jp a+b@baz.cn]
          addresses.each do |invalid_address|
            @user.email = invalid_address
            expect(@user).to be_valid
          end
        end
      end

    end

  end

end
