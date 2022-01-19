class Post < ApplicationRecord
  has_rich_text :content

  broadcasts

  validates :title, :content, presence: true
  validates :vote, numericality: { only_integer: true }

  def update_counter
    broadcast_update_to :posts, target: "posts_counter", partial: 'posts/posts_count', locals: { count: Post.count }
  end
end
