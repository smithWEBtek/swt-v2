class Tag < ApplicationRecord
  has_many :post_tags
  has_many :posts, through: :post_tags
  has_many :comment_tags
  has_many :comments, through: :comment_tags
  has_many :section_tags
  has_many :sections, through: :section_tags
  validates :name, uniqueness: true, presence: true
end
