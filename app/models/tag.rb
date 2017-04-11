class Tag < ApplicationRecord
  has_many :posts
  has_many :comments
  validates :name, uniqueness: true, presence: true
end
