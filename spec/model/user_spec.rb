require 'spec_helper'

RSpec.describe User, type: :model do
  before(:each) do
    @user = User.create(
      name: "abby",
      photo: "https://www.istockphoto.com/photo/portrait-of-smiling-mixed-race-woman-looking-at-camera-gm1319763830-406531071",
      bio: "Software engineer",
      posts_counter: 0
    )
  end

  it "should be invalid" do
    @user.name=''
    expect(@user).to_not be_valid
  end

  it "Should ensure the post counter has 0 or more" do
    @user.posts_counter = 8
    expect(@user).to be_valid;
  end
end 