class Section < ApplicationRecord
  has_many :post_sections
  has_many :posts, through: :post_sections
  has_many :section_tags
  has_many :tags, through: :section_tags
end
