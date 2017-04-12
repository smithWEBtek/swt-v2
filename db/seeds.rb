
DATA_users ={
 :user_keys =>
    ["experience", "username", "email", "password"],
  :users => [
    [0, "ned", "ned@abc.com", "pointer"],
    [1, "max", "max@abc.com", "pointer"],
    [2, "skai", "skai@abc.com", "pointer"],
    [3, "kaleo", "kaleo@abc.com", "pointer"],
    [3, "megan", "megan@abc.com", "pointer"],
    [2, "tenzing", "tenzing@abc.com", "pointer"],
    [2, "davis", "davis@abc.com", "pointer"],
    [1, "cole", "cole@abc.com", "pointer"],
    [1, "ted", "ted@abc.com", "pointer"],
    [0, "fred", "fred@abc.com", "pointer"]
  ]
}

def make_users
  DATA_users[:users].each do |user|
    new_user = User.new
    user.each_with_index do |attribute, i|
      new_user.send(DATA_users[:user_keys][i]+"=", attribute)
    end
    new_user.save
  end
end

DATA_posts ={
 :post_keys =>
    ["title", "outline", "summary", "date"],
  :posts => [
    ["Dark N' Scary Night", "TOC, Ch1,Ch2,Ch3, conclusion", "in summary..."],
    ["Plain N' Simple Donuts", "TOC, Ch1,Ch2,Ch3, conclusion", "in summary..."],
    ["Ugly Squirrels", "sTOC, Ch1,Ch2,Ch3, conclusion", "in summary..."],
    ["Concatening Dogs", "kaTOC, Ch1,Ch2,Ch3, conclusion", "in summary..."],
    ["How to Eat", "meTOC, Ch1,Ch2,Ch3, conclusion", "in summary..."],
    ["A Gentler Command Line", "tenzTOC, Ch1,Ch2,Ch3, conclusion", "in summary..."],
    ["Where is that Tag?", "daTOC, Ch1,Ch2,Ch3, conclusion", "in summary..."],
    ["Aroma Therapy", "cTOC, Ch1,Ch2,Ch3, conclusion", "in summary..."],
    ["Volley Ball, is it Discriminatory?", "TOC, Ch1,Ch2,Ch3, conclusion", "in summary..."],
    ["Tolerating Intolerance", "fTOC, Ch1,Ch2,Ch3, conclusion", "in summary..."]
  ]
}

def make_posts
  DATA_posts[:posts].each do |post|
    new_post = Post.new
    post.each_with_index do |attribute, i|
      new_post.send(DATA_posts[:post_keys][i]+"=", attribute)
    end
    new_post.save
  end
end

DATA_sections ={
 :section_keys =>
    ["format", "content"],
  :sections => [
  ["formated text", "lorax beevul winum bumpus klapsnap flarb knarb"],
  ["plain text", "lorax beevul winum bumpus klapsnap flarb knarb"],
  ["video", "https://www.youtube.com/watch?v=CVX7-eZReqs"],
  ["image", "https://goo.gl/images/BAW1bQ"],
  ["code", "  def self.reset_meal_food_ids
    all.each do |meal|
      next unless Food.find_by_id(meal.food_id).nil?
      food = Food.find_or_create_by(name: 'food deleted')
      meal.food_id = food.id
      meal.save
    end
  end"]        
  ]
}

def make_sections
  DATA_sections[:sections].each do |section|
    new_section = Section.new
    section.each_with_index do |attribute, i|
      new_section.send(DATA_sections[:section_keys][i]+"=", attribute)
    end
    new_section.save
  end
end

def main
  make_users
  make_posts
  make_sections
end

main

