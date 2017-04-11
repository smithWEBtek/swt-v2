class Post < ApplicationRecord
  has_many :post_sections
  accepts_nested_attributes_for :post_sections
end
