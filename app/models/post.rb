class Post < ApplicationRecord
  validates :title, :text, presence: true

  belongs_to :user
  belongs_to :category

  def self.search(search)
    return Post.all unless search
    Post.where('title LIKE(?)', "%#{search}%")
  end
end
