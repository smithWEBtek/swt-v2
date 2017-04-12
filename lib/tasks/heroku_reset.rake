namespace :db do
  desc 'db create, migrate, seed, restart'
  task heroku_reset: :environment do
    sh "rake db:migrate"
    sh "rake db:seed"
  end
end
