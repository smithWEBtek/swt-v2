Rails.application.routes.draw do
  root 'static#home'
  get '/about', to: 'static#about'
  get '/ask', to: 'static#ask'
  get '/blog', to: 'static#blog'
  get '/future', to: 'static#future'
  get '/wiki', to: 'static#wiki'
  get '/projects', to: 'static#projects'

end
