require 'rails_helper'

RSpec.describe Post, type: :model do
  before(:each) do
    @post = Post.create(
      id: 1,
      user: @user,
      title: 'First post',
      text: 'Lets connect',
      comments_counter: 0,
      likes_counter: 0
    )
  end

  context 'When testing the Post model Validations' do
    it 'is invalid when the title is empty' do
      @post.title = ''
      expect(@post).to_not be_valid
    end

    it 'is invalid when the length of the title is greater than 250' do
      @post.title = 'a' * 270
      expect(@post).to_not be_valid
    end
  end

  context 'When testing for associations' do
    it { should have_many(:likes) }
    it { should have_many(:comments) }
    it { should belong_to(:user) }
  end
end
