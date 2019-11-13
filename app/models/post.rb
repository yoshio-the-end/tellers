class Post < ApplicationRecord
  validates :title, :text, presence: true

  belongs_to :user
  belongs_to :category
  has_many :likes
  has_many :liked_users, through: :likes, source: :user

  def self.search(search)
    return Post.all unless search
    Post.where('title LIKE(?)', "%#{search}%")
  end
end
