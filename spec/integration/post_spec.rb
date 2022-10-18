require 'rails_helper'

RSpec.describe 'post index/#html', type: :feature do
  before :each do
    @abby = User.create(name: 'Abby', photo: 'https://www.google.com/images', bio: 'Software Engineer',
                        posts_counter: 2)
    @abby_post = Post.create(user: @abby, title: 'Senior Developer', text: 'I love learning', likes_counter: 2,
                             comments_counter: 1)
    Comment.create(text: 'I love what you are becoming', user: @abby, post: @abby_post)
  end

  before(:example) { visit user_posts_path(@abby) }

  describe 'index page' do
    it 'I can see the users profile picture' do
      expect(page).to have_content(@post)
    end

    it 'i can see the users username' do
      expect(page).to have_content('Peter')
    end

    it 'I can see the number of posts the user has written' do
      expect(page).to have_content(2)
    end

    it 'I can see a posts title.' do
      expect(page).to have_content('I love learning')
    end

    it 'I can see some of the posts body.' do
      expect(page).to have_content('I love learning')
    end

    it 'I can see the first comments on a post.' do
      expect(page).to have_content('I love what you are becoming')
    end

    it 'I can see how many comments a post has' do
      expect(page).to have_content('comments: 2')
    end

    it 'I can see how many likes a post has.' do
      expect(page).to have_content('likes: 2')
    end

    it 'I can see a section for pagination if there are more posts than fit on the view.' do
      expect(page).to have_content('Pagination')
    end
  end

  context 'posts show/#html' do
    before :each do
      @matt = User.create(name: 'Gasa', photo: 'https://www.google.com', bio: 'Software', posts_counter: 1)
      @matt_post = Post.create(user: @matt, title: 'Developer', text: 'I love learning', likes_counter: 8,
                               comments_counter: 1)
      Comment.create(text: 'I love what you are becoming', user: @matt, post: @matt_post)
    end
    before(:example) { visit user_path(@matt) }
    it 'I can see the post title.' do
      expect(page).to have_content('Developer')
    end
    it 'I can see who wrote the post.' do
      expect(page).to have_content('Gasa')
    end
    it 'I can see how many comments it has' do
      expect(page).to have_content('Comments: 2')
    end
    it 'I can see how many likes it has.' do
      expect(page).to have_content('Likes: 8')
    end
    it 'I can see the post body' do
      expect(page).to have_content('I love learning')
    end

    it 'I can see the username of each commentor.' do
      expect(page).to have_content('Gasa')
    end
  end
end
