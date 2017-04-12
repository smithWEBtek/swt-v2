
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
    ["Dark N' Scary Night", "TOC, Ch1,Ch2,Ch3, conclusion", "in summary...", "2017-04-10"],
    ["Plain N' Simple Donuts", "TOC, Ch1,Ch2,Ch3, conclusion", "in summary...", "2017-04-11"],
    ["Ugly Squirrels", "sTOC, Ch1,Ch2,Ch3, conclusion", "in summary...", "2017-04-12"],
    ["Concatening Dogs", "kaTOC, Ch1,Ch2,Ch3, conclusion", "in summary...", "2017-04-13"],
    ["How to Eat", "meTOC, Ch1,Ch2,Ch3, conclusion", "in summary...", "2017-04-14"],
    ["A Gentler Command Line", "tenzTOC, Ch1,Ch2,Ch3, conclusion", "in summary...", "2017-04-15"],
    ["Where is that Tag?", "daTOC, Ch1,Ch2,Ch3, conclusion", "in summary...", "2017-04-16"],
    ["Aroma Therapy", "cTOC, Ch1,Ch2,Ch3, conclusion", "in summary...", "2017-04-17"],
    ["Volley Ball, is it Discriminatory?", "TOC, Ch1,Ch2,Ch3, conclusion", "in summary...", "2017-04-18"],
    ["Tolerating Intolerance", "fTOC, Ch1,Ch2,Ch3, conclusion", "in summary...", "2017-04-19"]
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

DATA_post_sections ={
 :post_section_keys =>
    ["post_id", "section_id"],
  :post_sections => [
  [1, 1],       
  [1, 2],       
  [1, 3],       
  [1, 4],       
  [1, 5], 

  [2, 1],       
  [2, 2],       
  [2, 3],       
  [2, 4],       
  [2, 5], 

  [3, 1],       
  [3, 2],       
  [3, 3],       
  [3, 4],       
  [3, 5], 

  [4, 1],       
  [4, 2],       
  [4, 3],       
  [4, 4],       
  [4, 5],  

  [5, 1],       
  [5, 2],       
  [5, 3],       
  [5, 4],       
  [5, 5],  

  [6, 1],       
  [6, 2],       
  [6, 3],       
  [6, 4],       
  [6, 5],  

  [7, 1],       
  [7, 2],       
  [7, 3],       
  [7, 4],       
  [7, 5],  

  [8, 1],       
  [8, 2],       
  [8, 3],       
  [8, 4],       
  [8, 5],  

  [9, 1],       
  [9, 2],       
  [9, 3],       
  [9, 4],       
  [9, 5],  

  [9, 1],       
  [9, 2],       
  [9, 3],       
  [9, 4],       
  [9, 5], 

  [10, 1],       
  [10, 2],       
  [10, 3],       
  [10, 4],       
  [10, 5]  
  ]
}

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
  make_post_sections
end

main

