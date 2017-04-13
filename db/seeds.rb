
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
    ["repo", "date", "title", "outline", "body", "summary", "tweet", "refs"],
  :posts => [
    ["https://github.com/smithWEBtek/piano_search", 
      "2017-04-12", 
      "Piano Search CLI", 
      "Ch1, Ch2, Ch3, etc", 
      "blog.md", 
      "you should play the piano", 
      "tweet the piano", 
      "ref1, ref2, link3, wiki article, stackoverflow link"], 

    ["https://github.com/smithWEBtek/piano_search", 
      "2017-04-12", 
      "Dark N' Scary Night", 
      "Ch1, Ch2, Ch3, etc", 
      "blog.md", 
      "you should play the piano", 
      "tweet the piano", 
      "ref1, ref2, link3, wiki article, stackoverflow link"], 

    ["https://github.com/smithWEBtek/piano_search", 
      "2017-04-12", 
      "Plain N' Simple Donuts", 
      "Ch1, Ch2, Ch3, etc", 
      "blog.md", 
      "you should play the piano", 
      "tweet the piano", 
      "ref1, ref2, link3, wiki article, stackoverflow link"], 

    ["https://github.com/smithWEBtek/piano_search", 
      "2017-04-12", 
      "Piano Search CLI", 
      "Ch1, Ch2, Ch3, etc", 
      "blog.md", 
      "you should play the piano", 
      "tweet the piano", 
      "ref1, ref2, link3, wiki article, stackoverflow link"], 

    ["https://github.com/smithWEBtek/piano_search", 
      "2017-04-12", 
      "A Gentler Command Line", 
      "Ch1, Ch2, Ch3, etc", 
      "blog.md", 
      "you should play the piano", 
      "tweet the piano", 
      "ref1, ref2, link3, wiki article, stackoverflow link"], 

    ["https://github.com/smithWEBtek/piano_search", 
      "2017-04-12", 
      "Concatening Dogs", 
      "Ch1, Ch2, Ch3, etc", 
      "blog.md", 
      "you should play the piano", 
      "tweet the piano", 
      "ref1, ref2, link3, wiki article, stackoverflow link"], 

    ["https://github.com/smithWEBtek/piano_search", 
      "2017-04-12", 
      "Ugly Squirrels", 
      "Ch1, Ch2, Ch3, etc", 
      "blog.md", 
      "you should play the piano", 
      "tweet the piano", 
      "ref1, ref2, link3, wiki article, stackoverflow link"]
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
    ["post_id", "format", "content"],
  :sections => [
  [1, "formated text", "lorax beevul winum bumpus klapsnap flarb knarb"],
  [1, "plain text", "lorax beevul winum bumpus klapsnap flarb knarb"],
  [1, "video", "https://www.youtube.com/watch?v=CVX7-eZReqs"],
  [1, "image", "https://goo.gl/images/BAW1bQ"],
  [1, "code", "  def self.reset_meal_food_ids
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
 
def make_post_sections
  DATA_post_sections[:post_sections].each do |post_section|
    new_post_section = PostSection.new
    post_section.each_with_index do |attribute, i|
      new_post_section.send(DATA_post_sections[:post_section_keys][i]+"=", attribute)
    end
    new_post_section.save
  end
end

def main
  make_users
  make_posts
  make_sections
end

main

