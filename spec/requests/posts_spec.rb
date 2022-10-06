require 'rails_helper'

RSpec.describe 'Posts', type: :request do
  before(:each) do
    @user = User.create(name: 'Abby', photo: '', bio: 'teacher', posts_counter: 0)
    @post = Post.create(
      # author_id: @user,
      title: 'Post title',
      text: 'Post text',
      comments_counter: 0,
      likes_counter: 0
    )
    Comment.create(text: 'I am the author')
    Comment.create(text: 'Author 2')
    Comment.create(text: 'Lovely playing')
  end

  describe 'GET /index' do
    before(:each) do
      get user_posts_path(@user)
    end

    it 'return correct response' do
      expect(response).to have_http_status(:ok)
    end

    it 'should render correct template' do
      expect(response).to render_template(:index)
    end

    it 'body should includes correct placeholder text' do
      expect(response.body).to include('This are the posts home page')
    end
  end

  describe 'GET /show' do
    before(:each) do
      get user_posts_path(@user, @post)
    end

    it 'return correct response' do
      expect(response).to have_http_status(:ok)
    end

    it 'should render correct template' do
      expect(response).to_not render_template(:show)
    end

    it 'body should includes correct placeholder text' do
      expect(response.body).to include('posts')
    end
  end
end
