require 'redcarpet'
module ApplicationHelper

  # def markdown(content)
  #   renderer = Redcarpet::Render::HTML.new(hard_wrap: true, filter_html: true)
  #   options = {
  #     autolink: true,
  #     no_intra_emphasis: true,
  #     disable_indented_code_block: true,
  #     fenced_code_blocks: true,
  #     lax_html_blocks: true,
  #     strikethrough: true,
  #     superscript: true
  #   }
  # end

 
#   # Convert markdown to HTML
#   def markdown(text)
#     options = {
#       filter_html:     true,
#       hard_wrap:       true, 
#       link_attributes: { rel: 'nofollow', target: "_blank" },
#       space_after_headers: true, 
#       fenced_code_blocks: true
#     }

#     extensions = {
#       autolink:           true,
#       superscript:        true,
#       disable_indented_code_blocks: true
#     }

#     renderer    = Redcarpet::Render::HTML.new(options)
#     @markdown ||= Redcarpet::Markdown.new(renderer, extensions)
#     @markdown.render(text).html_safe
#   end    
# end

   
end
