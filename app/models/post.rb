class Post < ApplicationRecord
  has_many :likes
  has_many :comments
  belongs_to :user

  validates :title, presence: true
  validates :title, length: { maximum: 250 }
  validates :comments_counter, numericality: { integer_only: true }
  validates :comments_counter, numericality: { greater_than_or_equal_to: 0 }
  validates :likes_counter, numericality: { integer_only: true }
  validates :likes_counter, numericality: { greater_than_or_equal_to: 0 }

  after_save :post_counter

  def latest_comments
    Comment.limit(5).order(created_at: :desc)
  end

  def posts_counter
    user.increment!(:posts_counter)
  end

  # private :post_counter
end
