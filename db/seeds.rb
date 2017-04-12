
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

def main
  make_users
end

main