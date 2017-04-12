class Section < ApplicationRecord
  belongs_to :post
  has_many :section_tags
  has_many :tags, through: :section_tags
end
