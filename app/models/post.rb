class Post < ApplicationRecord
  has_many :comments
  has_many :users, through: :comments
  has_many :sections
  has_many :post_tags
  has_many :tags, through: :post_tags
  
  accepts_nested_attributes_for :sections
  validates :title, presence: true, uniqueness: true
end
