```
def make_users
  DATA_users[:users].each do |user|
    new_user = User.new
    user.each_with_index do |attribute, i|
      new_user.send(DATA_users[:user_keys][i]+"=", attribute)
    end
    new_user.save
  end
end
```

####list of stuff
-first thing
-well actually another
-yup that's it


```
namespace :db do
  desc 'drop, create, migrate, seed, restart'
  task reset_restart: :environment do
    sh "rake db:drop"
    sh "rake db:create"
    sh "rake db:migrate"
    sh "rake db:seed"
    sh "rails s"
  end
end
```


```erb
<%= form_for @post do |f| %>
  <p>
    <%= f.label :repo %><br>
    <%= f.text_field :repo %>
  </p>
  <p>
    <%= f.label :date %><br>
    <%= f.date_field :date %>
  </p>
  <p>
    <%= f.label :title %><br>
    <%= f.text_field :title %>
  </p>

```
```
<nav class="navbar navbar-default">
  <div class="container-fluid">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
    </div>
```
``` <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav">
        <li><a href="<%= about_path %>">about <span class="sr-only">(current)</span></a></li>
        <li><a href="<%= projects_path %>">projects</a></li>
        <li><h4><a href="<%= posts_path %>">blog</a></h4></li>
        <li><a href="<%= wiki_path %>">wiki</a></li>
        <li><a href="<%= ask_path %>">ask</a></li>
      </ul>
      <!-- search -->
      <form class="navbar-form navbar-right">
        <div class="form-group">
          <input type="text" class="form-control" placeholder="Search">
        </div>
        <button type="submit" class="btn btn-default">Submit</button>
      </form>
      <!-- /search -->
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>
```
