require 'redcarpet'

class Post < ApplicationRecord
  has_many :comments
  has_many :users, through: :comments
  has_many :sections
  has_many :post_tags
  has_many :tags, through: :post_tags
  
  accepts_nested_attributes_for :sections
  validates :title, presence: true, uniqueness: true

  mount_uploader :picture, PictureUploader
 
  def make_url
    url_base = "http://res.cloudinary.com/smithwebtek/raw/upload/"
    url_id = "v1492031519/"
    picture = "brad_swt_baecsc.jpg"
    # self.picture_url = url_base + url_id + picture
    self.picture_short_name = url_base + url_id + picture
  end

  def read(file)
    if file.nil?
      "no blog.md file exists"
    else
      file_path = "#{Rails.root}"+"/app/assets/blogs/"+"#{file}"
      self.markdown(File.read(file_path))
    end
  end

  def markdown(content)
    renderer = Redcarpet::Render::HTML.new(hard_wrap: true, filter_html: true)
    options = {
      autolink: true,
      no_intra_emphasis: true, 
      disable_indented_code_blocks: true,
      fenced_code_blocks: true, 
      lax_html_blocks: true,
      strikethrough: true,
      superscript: true
    }
    Redcarpet::Markdown.new(renderer, options).render(content).html_safe 
  end
end
