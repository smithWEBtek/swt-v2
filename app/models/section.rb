class Section < ApplicationRecord
  has_many :post_sections
  has_many :posts, through: :post_sections
end
