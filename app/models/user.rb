class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable, :confirmable
  has_many :posts
  has_many :likes
  has_many :comments
  before_validation :default_values

  validates :name, presence: true
  validates :posts_counter, presence: true, numericality: { only_integer: true, greater_than_or_equal_to: 0 }
  def default_values
    self.posts_counter = 0
    self.Photo = 'https://www.istockphoto.com/photo/portrait-of-smiling-mixed-race-woman-looking-at-camera-gm1319763830-406531071'
  end

  def recent_posts
    Post.limit(3).order(created_at: :desc)
  end
end
