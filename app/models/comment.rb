class Comment < ApplicationRecord
  belongs_to :post
  belongs_to :user
  has_many :comment_tags
  has_many :tags, through: :comment_tags
  validates :user_id, presence: true
  validates :post_id, presence: true
  validates :content, presence: true
  validates :subject_experience, presence: true
end
