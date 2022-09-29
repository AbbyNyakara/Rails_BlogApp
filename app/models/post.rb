class Post < ApplicationRecord
  has_many :likes
  has_many :comments
  belongs_to :user

  after_save :post_counter

  def latest_comments
    Comment.limit(5).order(created_at: :desc)
  end

  def posts_counter
    user.increment!(:posts_counter)
  end

  private :post_counter
end
