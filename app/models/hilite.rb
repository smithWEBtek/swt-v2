class Hilite < ApplicationRecord

  def create_api_url
    # self.api_url = ("http://hilite.me/api?code=" + "#{self.code.to_s}"+ "?lexer=" + "ruby").gsub(" ","")
    self.api_url = ("http://hilite.me/api?code=" + "#{self.code.to_s}"+ "?lexer=" + "ruby")
    self.save
  end
end
