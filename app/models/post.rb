class Post < ApplicationRecord
  has_rich_text :content

  validates :title, :content, presence: true
  validates :vote, numericality: { only_integer: true }
end
